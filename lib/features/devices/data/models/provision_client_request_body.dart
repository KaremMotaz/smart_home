import 'package:json_annotation/json_annotation.dart';

part 'provision_client_request_body.g.dart';

@JsonSerializable()
class ProvisionClientRequestBody {
  final String name;
  final String? metadata;

  ProvisionClientRequestBody({required this.name, this.metadata});

  factory ProvisionClientRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ProvisionClientRequestBodyFromJson(json);
      
  Map<String, dynamic> toJson() => _$ProvisionClientRequestBodyToJson(this);
}
