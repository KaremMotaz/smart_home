import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'create_domain_view_body.dart';
import '../../../../../core/functions/build_snack_bar.dart';
import '../../../../../core/functions/error_dialog.dart';
import '../../../manager/create_domain_cubit/create_domain_cubit.dart';

class CreateDomainBlocListener extends StatelessWidget {
  const CreateDomainBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateDomainCubit, CreateDomainState>(
      listenWhen: (previous, current) {
        return current is CreateDomainSuccess || current is CreateDomainFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          createDomainSuccess: () {
            successSnackBar(
              context: context,
              message: "Project Added Successfully",
            );

            context.pop(true);
          },
          createDomainFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const CreateDomainViewBody(),
    );
  }
}
