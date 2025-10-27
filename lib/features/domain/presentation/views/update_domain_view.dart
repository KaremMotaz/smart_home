import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';
import 'package:smart_home/features/domain/data/repos/update_domain_repo.dart';
import 'package:smart_home/features/domain/manager/update_domain_cubit/update_domain_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/update_domain/update_domain_bloc_listener.dart';

class UpdateDomainView extends StatelessWidget {
  const UpdateDomainView({super.key, required this.domain});
  final Domain domain;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateDomainCubit>(
      create: (context) =>
          UpdateDomainCubit(updateDomainRepo: getIt.get<UpdateDomainRepo>()),
      child: Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: UpdateDomainBlocListener(domain: domain)),
      ),
    );
  }
}
