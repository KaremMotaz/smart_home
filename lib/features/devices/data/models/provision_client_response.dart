import 'package:json_annotation/json_annotation.dart';

part 'provision_client_response.g.dart';

@JsonSerializable()
class ProvisionClientResponse {
  final String id;

  @JsonKey(name: 'domain_id')
  final String domainId;

  final String name;

  final String status;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  final Credentials credentials;

  ProvisionClientResponse({
    required this.id,
    required this.domainId,
    required this.name,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.credentials,
  });

  factory ProvisionClientResponse.fromJson(Map<String, dynamic> json) =>
      _$ProvisionClientResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProvisionClientResponseToJson(this);
}

@JsonSerializable()
class Credentials {
  final String secret;

  Credentials({required this.secret});

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
