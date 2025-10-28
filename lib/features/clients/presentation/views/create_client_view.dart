import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/features/clients/data/repos/create_client_repo.dart';
import 'package:smart_home/features/clients/manager/create_client_cubit/create_client_cubit.dart';
import 'package:smart_home/features/clients/presentation/widgets/create_client_bloc_listener.dart';

class CreateClientView extends StatelessWidget {
  const CreateClientView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CreateClientCubit(createClientRepo: getIt.get<CreateClientRepo>()),
      child: const Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: CreateClientBlocListener()),
      ),
    );
  }
}
