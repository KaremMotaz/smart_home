import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/devices/manager/provision_client_cubit/provision_client_cubit.dart';
import 'package:smart_home/features/devices/presentation/widgets/provision_client_view_body.dart';
import '../../../../../core/functions/build_snack_bar.dart';
import '../../../../../core/functions/error_dialog.dart';

class ProvisionClientBlocListener extends StatelessWidget {
  const ProvisionClientBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProvisionClientCubit, ProvisionClientState>(
      listenWhen: (previous, current) {
        return current is ProvisionClientSuccess ||
            current is ProvisionClientFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          provisionClientSuccess: () {
            successSnackBar(
              context: context,
              message: "Provision Client Successfully",
            );
            GoRouter.of(context).pop();
          },
          provisionClientFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const ProvisionClientViewBody(),
    );
  }
}
