import 'package:json_annotation/json_annotation.dart';
part 'change_secret_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeSecretRequestBody {
  @JsonKey(name: 'old_secret')
  final String oldSecret;

  @JsonKey(name: 'new_secret')
  final String newSecret;

  const ChangeSecretRequestBody({
    required this.oldSecret,
    required this.newSecret,
  });

  Map<String, dynamic> toJson() => _$ChangeSecretRequestBodyToJson(this);
}
