import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'create_domain_form.dart';

class CreateDomainViewBody extends StatelessWidget {
  const CreateDomainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          title: "Create Project",
          appBarTitle: "Create Project",
          subtitle:
              "Create a new project to organize, connect, and control your smart devices effortlessly.",
        ),
        Expanded(child: FormContainer(child: CreateDomainForm())),
      ],
    );
  }
}
