import 'package:json_annotation/json_annotation.dart';

part 'update_user_profile_picture_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateUserProfilePictureResponse {
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
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const UpdateUserProfilePictureResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.credentials,
    required this.tags,
    required this.metadata,
    required this.profilePicture,
    required this.status,
    required this.updatedAt,
  });

  factory UpdateUserProfilePictureResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateUserProfilePictureResponseFromJson(json);
  }
}

@JsonSerializable()
class Credentials {
  final String username;

  const Credentials({required this.username});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }
}
