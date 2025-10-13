import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/domain/data/repos/get_all_domains_repo.dart';
import 'package:smart_home/features/domain/manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/get_all_domains_view_body_bloc_builder.dart';

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
          title: const Text("Domains", style: TextStyles.bold18),
          backgroundColor: ColorsManager.homeBackground,
          actions: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).push(Routes.addDomainView);
              },
              child: Text(
                "Add Domin",
                style: TextStyles.bold18.copyWith(color: ColorsManager.grey),
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
        backgroundColor: ColorsManager.homeBackground,
        body: const SafeArea(child: GetAllDomainsViewBodyBlocBuilder()),
      ),
    );
  }
}
