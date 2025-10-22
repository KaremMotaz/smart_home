import 'package:json_annotation/json_annotation.dart';

part 'add_domain_response.g.dart';

@JsonSerializable()
class AddDomainResponse {
  final String alias;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'created_by')
  final String createdBy;
  final String id;
  final String name;
  final String status;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const AddDomainResponse({
    required this.alias,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  factory AddDomainResponse.fromJson(Map<String, dynamic> json) {
    return _$AddDomainResponseFromJson(json);
  }
}
