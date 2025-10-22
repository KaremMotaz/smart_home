import 'package:json_annotation/json_annotation.dart';

part 'update_domain_request_body.g.dart';

@JsonSerializable()
class UpdateDomainRequestBody {
  final String? name;
  final String? alias;
  final String? metadata;

  const UpdateDomainRequestBody({this.name, this.alias, this.metadata});

  Map<String, dynamic> toJson() {
    return _$UpdateDomainRequestBodyToJson(this);
  }
}
