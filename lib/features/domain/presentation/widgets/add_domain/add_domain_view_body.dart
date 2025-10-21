import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/domain/presentation/widgets/add_domain/add_domain_form.dart';

class AddDomainViewBody extends StatelessWidget {
  const AddDomainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          title: "Add Project",
          appBarTitle: "Add Project",
          subtitle:
              "Add a new project to organize, connect, and control your smart devices effortlessly.",
        ),
        Expanded(child: FormContainer(child: AddDomainForm())),
      ],
    );
  }
}
