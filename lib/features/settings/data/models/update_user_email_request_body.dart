import 'package:json_annotation/json_annotation.dart';
part 'update_user_email_request_body.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserEmailRequestBody {
  final String email;

  UpdateUserEmailRequestBody({required this.email});

  Map<String, dynamic> toJson() => _$UpdateUserEmailRequestBodyToJson(this);
}
