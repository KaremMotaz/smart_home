import 'package:json_annotation/json_annotation.dart';

part 'update_domain_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateDomainResponse {
  final String alias;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'created_by')
  final String createdBy;
  final String id;
  final Map<String, dynamic>? metadata;
  final String name;
  final String status;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'updated_by')
  final String updatedBy;

  const UpdateDomainResponse({
    required this.alias,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.metadata,
    required this.name,
    required this.status,
    required this.updatedAt,
    required this.updatedBy,
  });

  factory UpdateDomainResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateDomainResponseFromJson(json);
  }
}
