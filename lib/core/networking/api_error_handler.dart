import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle({required dynamic error}) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            message:
                "Unable to connect to the server. Please check your internet connection and try again.",
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: "The request was cancelled before completion.",
          );
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            message:
                "The connection to the server took too long. Please try again.",
          );
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Failed to reach the server. Please make sure you’re online.",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message:
                "The server took too long to respond. Please try again later.",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message:
                "Sending data to the server took too long. Please try again.",
          );
        default:
          return ApiErrorModel(
            message: "An unexpected error occurred. Please try again.",
          );
      }
    } else {
      return ApiErrorModel(
        message: "An unexpected error occurred. Please try again.",
      );
    }
  }

  static ApiErrorModel _handleError(dynamic response) {
    return ApiErrorModel.fromJson(response ?? {});
  }
}
