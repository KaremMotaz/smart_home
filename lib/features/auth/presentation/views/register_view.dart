import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/features/auth/data/repos/register_repo.dart';
import 'package:smart_home/features/auth/manager/cubit/register_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/register_view_body_bloc_listener.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) =>
          RegisterCubit(registerRepo: getIt.get<RegisterRepo>()),
      child: Scaffold(body: SafeArea(child: RegisterViewBodyBlocListener())),
    );
  }
}
