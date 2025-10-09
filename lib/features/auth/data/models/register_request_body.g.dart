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
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
  RegisterRequestBody instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'credentials': instance.credentials.toJson(),
  'metadata': instance.metadata.toJson(),
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

Metadata _$MetadataFromJson(Map<String, dynamic> json) =>
    Metadata(phoneNumber: json['phoneNumber'] as String);

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
  'phoneNumber': instance.phoneNumber,
};
