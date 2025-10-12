// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_domain_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDomainResponseBody _$AddDomainResponseBodyFromJson(
  Map<String, dynamic> json,
) => AddDomainResponseBody(
  alias: json['alias'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$AddDomainResponseBodyToJson(
  AddDomainResponseBody instance,
) => <String, dynamic>{
  'alias': instance.alias,
  'created_at': instance.createdAt,
  'created_by': instance.createdBy,
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'updated_at': instance.updatedAt,
};
