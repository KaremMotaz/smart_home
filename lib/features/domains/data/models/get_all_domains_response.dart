import 'package:json_annotation/json_annotation.dart';

part 'get_all_domains_response.g.dart';

@JsonSerializable()
class GetAllDomainsResponse {
  final List<Domain> domains;
  final int limit;
  final int total;

  GetAllDomainsResponse({
    required this.domains,
    required this.limit,
    required this.total,
  });

  factory GetAllDomainsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllDomainsResponseFromJson(json);
}

@JsonSerializable()
class Domain {
  final String id;
  final String name;
  final String route;
  final String status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'created_by')
  final String createdBy;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  Domain({
    required this.id,
    required this.name,
    required this.route,
    required this.status,
    required this.createdAt,
    required this.createdBy,
    required this.updatedAt,
  });

  factory Domain.fromJson(Map<String, dynamic> json) => _$DomainFromJson(json);

  Map<String, dynamic> toJson() => _$DomainToJson(this);

  static List<Domain> dummyDomains = List.generate(
    6,
    (index) => Domain(
      id: "",
      name: "test",
      route: "",
      status: "",
      createdAt: "",
      createdBy: "",
      updatedAt: "",
    ),
  );
}
