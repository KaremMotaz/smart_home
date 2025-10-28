import 'package:json_annotation/json_annotation.dart';

part 'create_domain_response.g.dart';

@JsonSerializable()
class CreateDomainResponse {
  final String id;
  final String name;
  final String route;
  final String status;
  @JsonKey(name: 'created_by')
  final String createdBy;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const CreateDomainResponse({
    required this.route,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  factory CreateDomainResponse.fromJson(Map<String, dynamic> json) {
    return _$CreateDomainResponseFromJson(json);
  }
}
