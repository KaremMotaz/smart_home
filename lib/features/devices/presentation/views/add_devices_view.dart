import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/features/devices/data/repos/provision_client_repo.dart';
import 'package:smart_home/features/devices/manager/provision_client_cubit/provision_client_cubit.dart';
import 'package:smart_home/features/devices/presentation/widgets/provision_client_bloc_listener.dart';

class AddDevicesView extends StatelessWidget {
  const AddDevicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProvisionClientCubit(
        provisionClientRepo: getIt.get<ProvisionClientRepo>(),
      ),
      child: const Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: ProvisionClientBlocListener()),
      ),
    );
  }
}
