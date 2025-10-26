import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:smart_home/core/helpers/logger.dart';
import 'package:smart_home/core/networking/api_service.dart';
import '../helpers/constants.dart';
import '../services/cache_helper.dart';
import 'api_constants.dart';

class DioFactory {
  late final Dio dio;

  DioFactory() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.apiBaseUrl,
        connectTimeout: const Duration(minutes: 3),
        receiveTimeout: const Duration(minutes: 3),
        sendTimeout: const Duration(minutes: 5),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await CacheHelper.getSecureData(key: kAccessToken);
          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final bool refreshed = await _refreshAccessToken();

            if (refreshed) {
              final newToken = await CacheHelper.getSecureData(
                key: kAccessToken,
              );
              final requestOptions = error.requestOptions;
              requestOptions.headers["Authorization"] = "Bearer $newToken";

              final response = await dio.fetch(requestOptions);

              return handler.resolve(response);
            }
          }
          return handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
      ),
    );
  }

  Future<bool> _refreshAccessToken() async {
    final refreshToken = await CacheHelper.getSecureData(key: kRefreshToken);
    if (refreshToken == null) return false;

    try {
      final apiService = ApiService(Dio());
      final response = await apiService.refreshAccessToken(
        refreshTokenHeader: 'Bearer $refreshToken',
      );
      await CacheHelper.setSecureData(
        key: kAccessToken,
        value: response.accessToken,
      );
      await CacheHelper.setSecureData(
        key: kRefreshToken,
        value: response.refreshToken,
      );

      return true;
    } catch (e, s) {
      Logger.log('Refresh token failed: $e\n$s');
      return false;
    }
  }
}
