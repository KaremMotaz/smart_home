import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/helpers/extensions.dart';
import 'package:smart_home/core/services/cache_helper.dart';
import '../../manager/login_cubit/login_cubit.dart';
import 'login_view_body.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';

class LoginViewBodyBlocListener extends StatelessWidget {
  const LoginViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoginSuccess || current is LoginFailure;
      },
      listener: (context, state) async {
        final String? selectedDomainId = await CacheHelper.getSecureData(
          key: kSelectedDomainId,
        );
        state.whenOrNull(
          loginSuccess: () {
            successSnackBar(context: context, message: "Login Success");
            if (selectedDomainId.isNullOrEmpty()) {
              GoRouter.of(context).pushReplacement(Routes.manageDomainsView);
            } else {
              GoRouter.of(context).pushReplacement(Routes.homeView);
            }
          },
          loginFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const LoginViewBody(),
    );
  }
}
