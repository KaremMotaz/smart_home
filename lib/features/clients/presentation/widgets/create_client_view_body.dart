import 'package:flutter/material.dart';
import 'package:smart_home/features/clients/presentation/widgets/create_client_form.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';

class CreateClientViewBody extends StatelessWidget {
  const CreateClientViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          title: "Add Device",
          appBarTitle: "Add Device",
          subtitle:
              "Add a new device to organize, connect, and control your smart devices effortlessly.",
        ),
        Expanded(child: FormContainer(child: CreateClientForm())),
      ],
    );
  }
}
