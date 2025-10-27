// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_domain_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDomainRequestBody _$AddDomainRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddDomainRequestBody(
  name: json['name'] as String,
  route: json['route'] as String,
);

Map<String, dynamic> _$AddDomainRequestBodyToJson(
  AddDomainRequestBody instance,
) => <String, dynamic>{'name': instance.name, 'route': instance.route};
