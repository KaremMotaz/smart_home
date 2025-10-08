import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  final String email;
  final Credentials credentials;

  RegisterRequestBody({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.credentials,
  });

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) {
    return _$RegisterRequestBodyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RegisterRequestBodyToJson(this);
  }
}

@JsonSerializable()
class Credentials {
  @JsonKey(name: 'username')
  final String userName;
  @JsonKey(name: 'secret')
  final String password;

  Credentials({required this.userName, required this.password});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CredentialsToJson(this);
  }
}
