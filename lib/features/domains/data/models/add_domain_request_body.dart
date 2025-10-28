import 'package:json_annotation/json_annotation.dart';

part 'add_domain_request_body.g.dart';

@JsonSerializable()
class AddDomainRequestBody {
  final String name;
  final String route;

  AddDomainRequestBody({required this.name, required this.route});

  Map<String, dynamic> toJson() {
    return _$AddDomainRequestBodyToJson(this);
  }
}
