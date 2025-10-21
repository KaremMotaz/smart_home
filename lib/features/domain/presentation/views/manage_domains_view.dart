import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../data/repos/get_all_domains_repo.dart';
import '../../manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import '../widgets/get_domain/get_all_domains_view_body_bloc_builder.dart';

class ManageDomainsView extends StatelessWidget {
  const ManageDomainsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetAllDomainsCubit>(
      create: (context) =>
          GetAllDomainsCubit(getAllDomainsRepo: getIt.get<GetAllDomainsRepo>())
            ..getAllDomains(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Domains", style: AppStyles.bold18),
          backgroundColor: AppColors.homeBackground,
          actions: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(Routes.addDomainView);
              },
              child: Text(
                "Add Domin",
                style: AppStyles.bold18.copyWith(color: AppColors.grey),
              ),
            ),
          ],
          leading: Navigator.of(context).canPop()
              ? IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios, size: 20),
                )
              : null,
        ),
        backgroundColor: AppColors.homeBackground,
        body: const SafeArea(child: GetAllDomainsViewBodyBlocBuilder()),
      ),
    );
  }
}
