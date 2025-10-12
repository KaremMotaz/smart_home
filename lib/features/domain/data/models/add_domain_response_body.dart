import 'package:json_annotation/json_annotation.dart';

part 'add_domain_response_body.g.dart';

@JsonSerializable()
class AddDomainResponseBody {
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

  const AddDomainResponseBody({
    required this.alias,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  factory AddDomainResponseBody.fromJson(Map<String, dynamic> json) {
    return _$AddDomainResponseBodyFromJson(json);
  }
}
