import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/functions/build_snack_bar.dart';
import 'package:smart_home/core/functions/error_dialog.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';
import 'package:smart_home/features/domain/manager/update_domain_cubit/update_domain_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/update_domain/update_domain_view_body.dart';

class UpdateDomainBlocListener extends StatelessWidget {
  const UpdateDomainBlocListener({super.key, required this.domain});
  final Domain domain;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateDomainCubit, UpdateDomainState>(
      listenWhen: (previous, current) {
        return current is UpdateDomainSuccess || current is UpdateDomainFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          updateDomainSuccess: () {
            successSnackBar(
              context: context,
              message: "Project Updated Successfully",
            );
            context.pop(true);
          },
          updateDomainFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: UpdateDomainViewBody(domain: domain),
    );
  }
}
