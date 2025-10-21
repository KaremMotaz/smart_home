import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/repos/add_domain_repo.dart';
import '../../manager/add_domain_cubit/add_domain_cubit.dart';
import '../widgets/add_domain/add_domain_bloc_listener.dart';

class AddDomainView extends StatelessWidget {
  const AddDomainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddDomainCubit>(
      create: (context) =>
          AddDomainCubit(addDomainRepo: getIt.get<AddDomainRepo>()),
      child: const Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: AddDomainBlocListener(),
      ),
    );
  }
}
