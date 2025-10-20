import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/functions/error_dialog.dart';
import 'package:smart_home/core/functions/profile_updated_show_dialog.dart';
import 'package:smart_home/features/Settings/manager/edit_profile_cubit/edit_profile_cubit.dart';

class EditProfileListenerWrapper extends StatelessWidget {
  const EditProfileListenerWrapper({
    super.key,
    required this.fieldName,
    required this.child,
    this.onSuccess,
  });

  final String fieldName;
  final Widget child;
  final VoidCallback? onSuccess;

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProfileCubit, EditProfileState>(
      listenWhen: (previous, current) =>
          current is EditProfileSuccess || current is EditProfileFailure,
      listener: (context, state) {
        state.whenOrNull(
          editProfileSuccess: () {
            onSuccess?.call();
            GoRouter.of(context).pop();
            profileUpdatedShowDialog(context, fieldName: fieldName);
          },
          editProfileFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: child,
    );
  }
}
