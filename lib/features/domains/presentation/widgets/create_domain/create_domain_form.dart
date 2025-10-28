import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';
import '../../../data/models/create_domain_request_body.dart';
import '../../../manager/create_domain_cubit/create_domain_cubit.dart';

class CreateDomainForm extends StatefulWidget {
  const CreateDomainForm({super.key});

  @override
  State<CreateDomainForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<CreateDomainForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController routeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    routeController.dispose();
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
            controller: routeController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your project alias";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<CreateDomainCubit, CreateDomainState>(
            label: "Submit",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is CreateDomainLoading,
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
      context.read<CreateDomainCubit>().createDomain(
        addDomainRequestBody: CreateDomainRequestBody(
          name: nameController.text,
          route: routeController.text,
        ),
      );
    }
  }
}
