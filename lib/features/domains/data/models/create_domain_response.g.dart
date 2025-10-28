// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_domain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDomainResponse _$CreateDomainResponseFromJson(
  Map<String, dynamic> json,
) => CreateDomainResponse(
  route: json['route'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$CreateDomainResponseToJson(
  CreateDomainResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'route': instance.route,
  'status': instance.status,
  'created_by': instance.createdBy,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
