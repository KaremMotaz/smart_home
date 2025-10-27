import 'package:flutter/material.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';
import 'package:smart_home/features/domain/presentation/widgets/update_domain/update_domain_form.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';

class UpdateDomainViewBody extends StatelessWidget {
  const UpdateDomainViewBody({super.key, required this.domain});
  final Domain domain;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeader(
          title: "Update Project",
          appBarTitle: "Update Project",
          subtitle:
              "Update a project to organize, connect, and control your smart devices effortlessly.",
        ),
        Expanded(
          child: FormContainer(child: UpdateDomainForm(domain: domain)),
        ),
      ],
    );
  }
}
