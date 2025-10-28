import 'package:json_annotation/json_annotation.dart';

part 'create_client_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateClientRequestBody {
  final String name;
  final Credentials credentials;

  const CreateClientRequestBody({
    required this.name,
    required this.credentials,
  });

  factory CreateClientRequestBody.fromJson(Map<String, dynamic> json) {
    return _$CreateClientRequestBodyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateClientRequestBodyToJson(this);
  }
}

@JsonSerializable()
class Credentials {
  final String identity;
  final String secret;

  const Credentials({required this.identity, required this.secret});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CredentialsToJson(this);
  }
}
