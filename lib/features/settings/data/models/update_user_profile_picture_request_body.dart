import 'package:json_annotation/json_annotation.dart';

part 'update_user_profile_picture_request_body.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserProfilePictureRequestBody {
  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  UpdateUserProfilePictureRequestBody({required this.profilePicture});

  Map<String, dynamic> toJson() =>
      _$UpdateUserProfilePictureRequestBodyToJson(this);
}
