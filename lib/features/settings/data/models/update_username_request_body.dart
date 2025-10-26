import 'package:json_annotation/json_annotation.dart';

part 'update_username_request_body.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUsernameRequestBody {
  final String username;

  UpdateUsernameRequestBody({required this.username});

  Map<String, dynamic> toJson() => _$UpdateUsernameRequestBodyToJson(this);
}
