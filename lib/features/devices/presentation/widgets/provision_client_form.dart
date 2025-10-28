import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/devices/data/models/provision_client_request_body.dart';
import 'package:smart_home/features/devices/manager/provision_client_cubit/provision_client_cubit.dart';

import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class ProvisionClientForm extends StatefulWidget {
  const ProvisionClientForm({super.key});

  @override
  State<ProvisionClientForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<ProvisionClientForm> {
  final TextEditingController deviceNameController = TextEditingController();
  final TextEditingController metaDataController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    deviceNameController.dispose();
    metaDataController.dispose();
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
            hintText: "Device Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your device name";
              }
              return null;
            },
            controller: deviceNameController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.name,
            hintText: "Meta Data",
            controller: metaDataController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your meta data";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<ProvisionClientCubit, ProvisionClientState>(
            label: "Submit",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is ProvisionClientLoading,
            onPressed: () {
              validateThenProvisionClient(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenProvisionClient(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<ProvisionClientCubit>().provisionClient(
        client: ProvisionClientRequestBody(
          name: deviceNameController.text,
          metadata: metaDataController.text,
        ),
      );
    }
  }
}
