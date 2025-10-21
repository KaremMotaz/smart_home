import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/manager/user_data_cubit/user_data_cubit.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/repos/login_repo.dart';
import '../../manager/login_cubit/login_cubit.dart';
import '../widgets/login/login_bloc_listener.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(
        loginRepo: getIt.get<LoginRepo>(),
        userDataCubit: getIt.get<UserDataCubit>(),
      ),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.orange2,
        body: LoginBlocListener(),
      ),
    );
  }
}
