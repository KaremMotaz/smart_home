import 'package:json_annotation/json_annotation.dart';

part 'update_domain_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateDomainResponse {
  final String id;
  final String name;
  final Map<String, dynamic>? metadata;
  final String route;
  final String status;
  @JsonKey(name: 'created_by')
  final String createdBy;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const UpdateDomainResponse({
    required this.route,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.metadata,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  factory UpdateDomainResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateDomainResponseFromJson(json);
  }
}
