import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/add_device_request_body.dart';
import '../models/add_device_response.dart';

part 'device_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class DeviceService {
  factory DeviceService(Dio dio) = _DeviceService;

  @POST(ApiConstants.addDevice)
  Future<AddDeviceResponse> addDevice({
    @Body() required AddDeviceRequestBody body,
  });
}
