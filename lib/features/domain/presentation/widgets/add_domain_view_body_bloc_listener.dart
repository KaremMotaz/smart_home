import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/domain/manager/add_domain_cubit/add_domain_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/adda_domain_view_body.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';

class AddDomainViewBodyBlocListener extends StatelessWidget {
  const AddDomainViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddDomainCubit, AddDomainState>(
      listenWhen: (previous, current) {
        return current is AddDomainSuccess || current is AddDomainFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          addDomainSuccess: () {
            successSnackBar(
              context: context,
              message: "Domain Added Successfully",
            );
            GoRouter.of(context).pop();
          },
          addDomainFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const AddDomainViewBody(),
    );
  }
}
