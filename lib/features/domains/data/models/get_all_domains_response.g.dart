// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_domains_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllDomainsResponse _$GetAllDomainsResponseFromJson(
  Map<String, dynamic> json,
) => GetAllDomainsResponse(
  domains: (json['domains'] as List<dynamic>)
      .map((e) => Domain.fromJson(e as Map<String, dynamic>))
      .toList(),
  limit: (json['limit'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$GetAllDomainsResponseToJson(
  GetAllDomainsResponse instance,
) => <String, dynamic>{
  'domains': instance.domains,
  'limit': instance.limit,
  'total': instance.total,
};

Domain _$DomainFromJson(Map<String, dynamic> json) => Domain(
  id: json['id'] as String,
  name: json['name'] as String,
  route: json['route'] as String,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$DomainToJson(Domain instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'route': instance.route,
  'status': instance.status,
  'created_at': instance.createdAt,
  'created_by': instance.createdBy,
  'updated_at': instance.updatedAt,
};
