import 'package:flutter/material.dart';

import 'add_domain_form.dart';

class AddDomainFormContainer extends StatelessWidget {
  const AddDomainFormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: AddDomainForm(),
      ),
    );
  }
}
