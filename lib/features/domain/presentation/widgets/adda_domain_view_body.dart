import 'package:flutter/material.dart';
import 'package:smart_home/features/domain/presentation/widgets/add_domain_form_container.dart';
import 'package:smart_home/features/domain/presentation/widgets/add_domain_header.dart';

class AddDomainViewBody extends StatelessWidget {
  const AddDomainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AddDomainHeader(),
        Expanded(child: AddDomainFormContainer()),
      ],
    );
  }
}
