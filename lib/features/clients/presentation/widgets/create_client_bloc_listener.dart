import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/clients/manager/create_client_cubit/create_client_cubit.dart';
import 'package:smart_home/features/clients/presentation/widgets/create_client_view_body.dart';
import '../../../../../core/functions/build_snack_bar.dart';
import '../../../../../core/functions/error_dialog.dart';

class CreateClientBlocListener extends StatelessWidget {
  const CreateClientBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateClientCubit, CreateClientState>(
      listenWhen: (previous, current) {
        return current is CreateClientSuccess || current is CreateClientFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          createClientSuccess: () {
            successSnackBar(
              context: context,
              message: "Create Client Successfully",
            );
            GoRouter.of(context).pop();
          },
          createClientFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const CreateClientViewBody(),
    );
  }
}
