import 'package:json_annotation/json_annotation.dart';
part 'get_all_domains_response_body.g.dart';

@JsonSerializable()
class GetAllDomainsResponseBody {
  final List<Domain> domains;
  final int limit;
  final int offset;
  final int total;

  GetAllDomainsResponseBody({
    required this.domains,
    required this.limit,
    required this.offset,
    required this.total,
  });

  factory GetAllDomainsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetAllDomainsResponseBodyFromJson(json);
}

@JsonSerializable()
class Domain {
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

  Domain({
    required this.alias,
    required this.createdAt,
    required this.createdBy,
    required this.id,
    required this.name,
    required this.status,
    required this.updatedAt,
  });

  factory Domain.fromJson(Map<String, dynamic> json) => _$DomainFromJson(json);

  Map<String, dynamic> toJson() => _$DomainToJson(this);
}
