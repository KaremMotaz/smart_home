import 'package:json_annotation/json_annotation.dart';

part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  @JsonKey(name: "access_token")
  final String accessToken;
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  LoginResponseBody({required this.accessToken, required this.refreshToken});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseBodyFromJson(json);
  }
}
