// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    RegisterRequestBody(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      credentials: Credentials.fromJson(
        json['credentials'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
  RegisterRequestBody instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'credentials': instance.credentials.toJson(),
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials(
  userName: json['username'] as String,
  password: json['secret'] as String,
);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'secret': instance.password,
    };
