// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvisionClientResponse _$ProvisionClientResponseFromJson(
  Map<String, dynamic> json,
) => ProvisionClientResponse(
  id: json['id'] as String,
  domainId: json['domain_id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  credentials: Credentials.fromJson(
    json['credentials'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ProvisionClientResponseToJson(
  ProvisionClientResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'domain_id': instance.domainId,
  'name': instance.name,
  'status': instance.status,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'credentials': instance.credentials,
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) =>
    Credentials(secret: json['secret'] as String);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'secret': instance.secret};
