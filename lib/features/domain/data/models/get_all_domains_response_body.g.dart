// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_domains_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllDomainsResponseBody _$GetAllDomainsResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetAllDomainsResponseBody(
  domains: (json['domains'] as List<dynamic>)
      .map((e) => Domain.fromJson(e as Map<String, dynamic>))
      .toList(),
  limit: (json['limit'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$GetAllDomainsResponseBodyToJson(
  GetAllDomainsResponseBody instance,
) => <String, dynamic>{
  'domains': instance.domains,
  'limit': instance.limit,
  'offset': instance.offset,
  'total': instance.total,
};

Domain _$DomainFromJson(Map<String, dynamic> json) => Domain(
  alias: json['alias'] as String,
  createdAt: json['created_at'] as String,
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$DomainToJson(Domain instance) => <String, dynamic>{
  'alias': instance.alias,
  'created_at': instance.createdAt,
  'created_by': instance.createdBy,
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'updated_at': instance.updatedAt,
};
