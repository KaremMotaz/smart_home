// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_client_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvisionClientRequestBody _$ProvisionClientRequestBodyFromJson(
  Map<String, dynamic> json,
) => ProvisionClientRequestBody(
  name: json['name'] as String,
  metadata: json['metadata'] as String?,
);

Map<String, dynamic> _$ProvisionClientRequestBodyToJson(
  ProvisionClientRequestBody instance,
) => <String, dynamic>{'name': instance.name, 'metadata': instance.metadata};
