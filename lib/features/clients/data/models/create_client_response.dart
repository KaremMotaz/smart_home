import 'package:json_annotation/json_annotation.dart';

part 'create_client_response.g.dart';

@JsonSerializable()
class CreateClientResponse {
  final String id;
  final String name;
  @JsonKey(name: 'domain_id')
  final String domainId;
  final Credentials credentials;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final String status;

  const CreateClientResponse({
    required this.id,
    required this.name,
    required this.domainId,
    required this.credentials,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory CreateClientResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateClientResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateClientResponseToJson(this);
}

@JsonSerializable()
class Credentials {
  final String identity;
  final String secret;

  const Credentials({required this.identity, required this.secret});

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
