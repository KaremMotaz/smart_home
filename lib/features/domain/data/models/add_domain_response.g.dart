// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_domain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDomainResponse _$AddDomainResponseFromJson(Map<String, dynamic> json) =>
    AddDomainResponse(
      route: json['route'] as String,
      createdAt: json['created_at'] as String,
      createdBy: json['created_by'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$AddDomainResponseToJson(AddDomainResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'route': instance.route,
      'status': instance.status,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
