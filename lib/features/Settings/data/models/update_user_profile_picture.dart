import 'package:json_annotation/json_annotation.dart';
part 'update_user_profile_picture.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserProfilePicture {
  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  UpdateUserProfilePicture({required this.profilePicture});

  Map<String, dynamic> toJson() => _$UpdateUserProfilePictureToJson(this);
}
