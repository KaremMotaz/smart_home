import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';
import '../../../data/models/add_domain_request_body.dart';
import '../../../manager/add_domain_cubit/add_domain_cubit.dart';

class AddDomainForm extends StatefulWidget {
  const AddDomainForm({super.key});

  @override
  State<AddDomainForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<AddDomainForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController aliasController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    aliasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            textInputType: TextInputType.name,
            hintText: "Project Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your project name";
              }
              return null;
            },
            controller: nameController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.name,
            hintText: "Project Alias",
            controller: aliasController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your project alias";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<AddDomainCubit, AddDomainState>(
            label: "Submit",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is AddDomainLoading,
            onPressed: () {
              validateThenAddDomain(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenAddDomain(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<AddDomainCubit>().addDomain(
        addDomainRequestBody: AddDomainRequestBody(
          name: nameController.text,
          alias: aliasController.text,
        ),
      );
    }
  }
}
