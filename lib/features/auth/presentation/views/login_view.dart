import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../data/repos/login_repo.dart';
import '../../manager/login_cubit/login_cubit.dart';
import '../widgets/login_view_body_bloc_listener.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(loginRepo: getIt.get<LoginRepo>()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorsManager.orange2,
        body: LoginViewBodyBlocListener(),
      ),
    );
  }
}
