import 'package:json_annotation/json_annotation.dart';

part 'update_domain_request_body.g.dart';

@JsonSerializable()
class UpdateDomainRequestBody {
  final String name;
  const UpdateDomainRequestBody({required this.name});

  Map<String, dynamic> toJson() {
    return _$UpdateDomainRequestBodyToJson(this);
  }
}
