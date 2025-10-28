// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateClientRequestBody _$CreateClientRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateClientRequestBody(
  name: json['name'] as String,
  credentials: Credentials.fromJson(
    json['credentials'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateClientRequestBodyToJson(
  CreateClientRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'credentials': instance.credentials.toJson(),
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials(
  identity: json['identity'] as String,
  secret: json['secret'] as String,
);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'identity': instance.identity, 'secret': instance.secret};
