import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/domain/data/repos/add_domain_repo.dart';
import 'package:smart_home/features/domain/manager/add_domain_cubit/add_domain_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/add_domain_view_body_bloc_listener.dart';

class AddDomainView extends StatelessWidget {
  const AddDomainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddDomainCubit>(
      create: (context) =>
          AddDomainCubit(addDomainRepo: getIt.get<AddDomainRepo>()),
      child: const Scaffold(
        backgroundColor: ColorsManager.orange2,
        resizeToAvoidBottomInset: true,
        body: AddDomainViewBodyBlocListener(),
      ),
    );
  }
}
