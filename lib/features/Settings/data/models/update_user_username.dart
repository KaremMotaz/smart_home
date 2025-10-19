import 'package:json_annotation/json_annotation.dart';
part 'update_user_username.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserUsername {
  final String username;

  UpdateUserUsername({required this.username});

  Map<String, dynamic> toJson() => _$UpdateUserUsernameToJson(this);
}
