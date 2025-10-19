import 'package:json_annotation/json_annotation.dart';

part 'update_user_request_body.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserRequestBody {
  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  final Map<String, dynamic>? metadata;

  const UpdateUserRequestBody({this.firstName, this.lastName, this.metadata});

  Map<String, dynamic> toJson() => _$UpdateUserRequestBodyToJson(this);
}
