import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

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
      create: (context) => AddDomainCubit(
        addDomainRepo: getIt.get<AddDomainRepo>(),
        localCacheService: getIt
            .get<LocalCacheService<GetAllDomainsResponse>>(),
      ),
      child: const Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: AddDomainBlocListener()),
      ),
    );
  }
}
