// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_domain_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDomainRequestBody _$CreateDomainRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateDomainRequestBody(
  name: json['name'] as String,
  route: json['route'] as String,
);

Map<String, dynamic> _$CreateDomainRequestBodyToJson(
  CreateDomainRequestBody instance,
) => <String, dynamic>{'name': instance.name, 'route': instance.route};
