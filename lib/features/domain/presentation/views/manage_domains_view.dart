import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/domain/data/repos/get_all_domains_repo.dart';
import 'package:smart_home/features/domain/manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/get_all_domains_view_body_bloc_consumer.dart';

class ManageDomainsView extends StatelessWidget {
  const ManageDomainsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetAllDomainsCubit>(
      create: (context) =>
          GetAllDomainsCubit(getAllDomainsRepo: getIt.get<GetAllDomainsRepo>())
            ..getAllDomains(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: ColorsManager.homeBackground,
          body: GetAllDomainsViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
