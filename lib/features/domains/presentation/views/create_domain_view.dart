import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/repos/create_domain_repo.dart';
import '../../manager/create_domain_cubit/create_domain_cubit.dart';
import '../widgets/create_domain/create_domain_bloc_listener.dart';

class CreateDomainView extends StatelessWidget {
  const CreateDomainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateDomainCubit>(
      create: (context) => CreateDomainCubit(
        addDomainRepo: getIt.get<CreateDomainRepo>(),
        localCacheService: getIt
            .get<LocalCacheService<GetAllDomainsResponse>>(),
      ),
      child: const Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: CreateDomainBlocListener()),
      ),
    );
  }
}
