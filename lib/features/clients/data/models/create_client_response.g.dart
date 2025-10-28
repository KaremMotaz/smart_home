// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateClientResponse _$CreateClientResponseFromJson(
  Map<String, dynamic> json,
) => CreateClientResponse(
  id: json['id'] as String,
  name: json['name'] as String,
  domainId: json['domain_id'] as String,
  credentials: Credentials.fromJson(
    json['credentials'] as Map<String, dynamic>,
  ),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$CreateClientResponseToJson(
  CreateClientResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'domain_id': instance.domainId,
  'credentials': instance.credentials,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'status': instance.status,
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials(
  identity: json['identity'] as String,
  secret: json['secret'] as String,
);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'identity': instance.identity, 'secret': instance.secret};
