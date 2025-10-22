// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_domain_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDomainRequestBody _$UpdateDomainRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateDomainRequestBody(
  name: json['name'] as String?,
  alias: json['alias'] as String?,
  metadata: json['metadata'] as String?,
);

Map<String, dynamic> _$UpdateDomainRequestBodyToJson(
  UpdateDomainRequestBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'alias': instance.alias,
  'metadata': instance.metadata,
};
