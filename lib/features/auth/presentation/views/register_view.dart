import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../data/repos/register_repo.dart';
import '../../manager/register_cubit/register_cubit.dart';
import '../widgets/register_view_body_bloc_listener.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) =>
          RegisterCubit(registerRepo: getIt.get<RegisterRepo>()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorsManager.orange2,
        body: RegisterViewBodyBlocListener(),
      ),
    );
  }
}
