import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/clients/data/models/create_client_request_body.dart';
import 'package:smart_home/features/clients/manager/create_client_cubit/create_client_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class CreateClientForm extends StatefulWidget {
  const CreateClientForm({super.key});

  @override
  State<CreateClientForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<CreateClientForm> {
  final TextEditingController deviceNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    deviceNameController.dispose();
    passwordController.dispose();
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
            hintText: "Password",
            isObscureText: isPasswordObscureText,
            controller: passwordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              icon: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your Password";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<CreateClientCubit, CreateClientState>(
            label: "Submit",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is CreateClientLoading,
            onPressed: () {
              validateThenCreateClient(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenCreateClient(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<CreateClientCubit>().createClient(
        createClientRequestBody: CreateClientRequestBody(
          name: deviceNameController.text,
          credentials: Credentials(
            identity: deviceNameController.text,
            secret: passwordController.text,
          ),
        ),
      );
    }
  }
}
