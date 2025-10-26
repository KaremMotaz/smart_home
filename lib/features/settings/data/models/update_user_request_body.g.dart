// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequestBody _$UpdateUserRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateUserRequestBody(
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$UpdateUserRequestBodyToJson(
  UpdateUserRequestBody instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'metadata': ?instance.metadata,
};
