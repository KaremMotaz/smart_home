import 'package:json_annotation/json_annotation.dart';
part 'update_username.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUsername {
  final String username;

  UpdateUsername({required this.username});

  Map<String, dynamic> toJson() => _$UpdateUsernameToJson(this);
}
