import 'package:json_annotation/json_annotation.dart';
part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @JsonKey(name: 'access_type')
  final String accessType;

  RefreshTokenResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.accessType,
  });

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);
}
