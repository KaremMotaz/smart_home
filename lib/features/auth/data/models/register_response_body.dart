import 'package:json_annotation/json_annotation.dart';

part 'register_response_body.g.dart';

@JsonSerializable()
class RegisterResponseBody {
  final String id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String status;
  final String role;
  final String email;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final Credentials credentials;

  RegisterResponseBody({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.status,
    required this.role,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.credentials,
  });

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) {
    return _$RegisterResponseBodyFromJson(json);
  }
}

@JsonSerializable()
class Credentials {
  @JsonKey(name: 'username')
  final String userName;

  Credentials({required this.userName});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
