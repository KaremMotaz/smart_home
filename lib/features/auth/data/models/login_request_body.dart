import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  @JsonKey(name: 'username')
  final String username;
  final String password;

  LoginRequestBody({required this.username, required this.password});

  Map<String, dynamic> toJson() {
    return _$LoginRequestBodyToJson(this);
  }
}
