import 'package:json_annotation/json_annotation.dart';
part 'user_data_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDataResponse {
  final String id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  final Credentials credentials;
  final List<String> tags;
  final Map<String, dynamic> metadata;
  @JsonKey(name: 'profile_picture')
  final String profilePicture;
  final String status;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const UserDataResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.credentials,
    required this.tags,
    required this.metadata,
    required this.profilePicture,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserDataResponse.fromJson(Map<String, dynamic> json) {
    return _$UserDataResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}

@JsonSerializable()
class Credentials {
  final String username;

  const Credentials({required this.username});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
