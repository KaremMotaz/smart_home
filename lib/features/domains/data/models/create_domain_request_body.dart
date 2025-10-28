import 'package:json_annotation/json_annotation.dart';

part 'create_domain_request_body.g.dart';

@JsonSerializable()
class CreateDomainRequestBody {
  final String name;
  final String route;

  CreateDomainRequestBody({required this.name, required this.route});

  Map<String, dynamic> toJson() {
    return _$CreateDomainRequestBodyToJson(this);
  }
}
