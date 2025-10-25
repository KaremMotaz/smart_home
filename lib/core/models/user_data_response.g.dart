// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      credentials: Credentials.fromJson(
        json['credentials'] as Map<String, dynamic>,
      ),
      metadata: json['metadata'] as Map<String, dynamic>?,
      role: json['role'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'metadata': instance.metadata,
      'status': instance.status,
      'credentials': instance.credentials.toJson(),
      'email': instance.email,
      'role': instance.role,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Credentials _$CredentialsFromJson(Map<String, dynamic> json) =>
    Credentials(username: json['username'] as String?);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'username': instance.username};
