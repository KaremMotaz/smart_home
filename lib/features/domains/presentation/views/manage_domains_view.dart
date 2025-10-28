import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/domains/presentation/widgets/get_domain/manage_domains_app_bar.dart';
import '../../../../core/services/get_it_service.dart';
import '../../data/repos/get_all_domains_repo.dart';
import '../../manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import '../widgets/get_domain/get_all_domains_bloc_builder.dart';

class ManageDomainsView extends StatelessWidget {
  const ManageDomainsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetAllDomainsCubit>(
      create: (context) =>
          GetAllDomainsCubit(getAllDomainsRepo: getIt.get<GetAllDomainsRepo>())
            ..getAllDomains(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        appBar: ManageDomainsAppBar(),
        body: SafeArea(child: GetAllDomainsBlocBuilder()),
      ),
    );
  }
}
