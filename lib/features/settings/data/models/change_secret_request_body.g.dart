// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_secret_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeSecretRequestBody _$ChangeSecretRequestBodyFromJson(
  Map<String, dynamic> json,
) => ChangeSecretRequestBody(
  oldSecret: json['old_secret'] as String,
  newSecret: json['new_secret'] as String,
);

Map<String, dynamic> _$ChangeSecretRequestBodyToJson(
  ChangeSecretRequestBody instance,
) => <String, dynamic>{
  'old_secret': instance.oldSecret,
  'new_secret': instance.newSecret,
};
