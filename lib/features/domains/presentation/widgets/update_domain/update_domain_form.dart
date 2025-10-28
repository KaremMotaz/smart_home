import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response_body.dart';
import 'package:smart_home/features/domains/data/models/update_domain_request_body.dart';
import 'package:smart_home/features/domains/manager/update_domain_cubit/update_domain_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class UpdateDomainForm extends StatefulWidget {
  const UpdateDomainForm({super.key, required this.domain});
  final Domain domain;

  @override
  State<UpdateDomainForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<UpdateDomainForm> {
  late final TextEditingController nameController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.domain.name);
  }

  @override
  void dispose() {
    nameController.dispose();
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
            hintText: "New Project Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your new project name";
              }
              return null;
            },
            controller: nameController,
          ),
          const SizedBox(height: 40),
          BlocButton<UpdateDomainCubit, UpdateDomainState>(
            label: "Submit",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is UpdateDomainLoading,
            onPressed: () {
              validateThenUpdateDomain(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenUpdateDomain(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<UpdateDomainCubit>().updateDomain(
        updateDomainRequestBody: UpdateDomainRequestBody(
          name: nameController.text,
        ),
        domainId: widget.domain.id,
      );
    }
  }
}
