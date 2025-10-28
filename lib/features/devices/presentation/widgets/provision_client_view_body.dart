import 'package:flutter/material.dart';
import 'package:smart_home/features/devices/presentation/widgets/provision_client_form.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';

class ProvisionClientViewBody extends StatelessWidget {
  const ProvisionClientViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          title: "Provision Device",
          appBarTitle: "Provision Device",
          subtitle:
              "Provision a new device to organize, connect, and control your smart devices effortlessly.",
        ),
        Expanded(child: FormContainer(child: ProvisionClientForm())),
      ],
    );
  }
}
