// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseBody _$RegisterResponseBodyFromJson(
  Map<String, dynamic> json,
) => RegisterResponseBody(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  status: json['status'] as String,
  role: json['role'] as String,
  email: json['email'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  credentials: Credentials.fromJson(
    json['credentials'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$RegisterResponseBodyToJson(
  RegisterResponseBody instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'status': instance.status,
  'role': instance.role,
  'email': instance.email,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'credentials': instance.credentials,
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) =>
    Credentials(userName: json['username'] as String);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'username': instance.userName};
