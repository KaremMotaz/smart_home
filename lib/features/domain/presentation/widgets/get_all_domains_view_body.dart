import 'package:flutter/material.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';

class GetAllDomainsViewBody extends StatelessWidget {
  const GetAllDomainsViewBody({
    super.key,
    required this.getAllDomainsResponseBody,
  });
  final GetAllDomainsResponseBody getAllDomainsResponseBody;
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Get All Domains View Body"));
  }
}
