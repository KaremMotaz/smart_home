// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_domain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDomainResponse _$UpdateDomainResponseFromJson(
  Map<String, dynamic> json,
) => UpdateDomainResponse(
  route: json['route'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  metadata: json['metadata'] as Map<String, dynamic>?,
  name: json['name'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$UpdateDomainResponseToJson(
  UpdateDomainResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'metadata': instance.metadata,
  'route': instance.route,
  'status': instance.status,
  'created_by': instance.createdBy,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
