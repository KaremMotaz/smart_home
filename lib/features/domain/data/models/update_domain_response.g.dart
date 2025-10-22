// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_domain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDomainResponse _$UpdateDomainResponseFromJson(
  Map<String, dynamic> json,
) => UpdateDomainResponse(
  alias: json['alias'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  metadata: json['metadata'] as Map<String, dynamic>?,
  name: json['name'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
  updatedBy: json['updated_by'] as String,
);

Map<String, dynamic> _$UpdateDomainResponseToJson(
  UpdateDomainResponse instance,
) => <String, dynamic>{
  'alias': instance.alias,
  'created_at': instance.createdAt,
  'created_by': instance.createdBy,
  'id': instance.id,
  'metadata': instance.metadata,
  'name': instance.name,
  'status': instance.status,
  'updated_at': instance.updatedAt,
  'updated_by': instance.updatedBy,
};
