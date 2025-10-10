import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? error;
  final String message;

  ApiErrorModel({required this.message, this.error});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return _$ApiErrorModelFromJson(json);
  }
}
