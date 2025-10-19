import 'package:json_annotation/json_annotation.dart';
part 'update_user_email.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UpdateUserEmail {
  final String email;

  UpdateUserEmail({required this.email});

  Map<String, dynamic> toJson() => _$UpdateUserEmailToJson(this);
}
