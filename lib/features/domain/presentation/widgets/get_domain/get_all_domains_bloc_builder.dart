import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/widgets/custom_circular_progress_indicator.dart';
import 'package:smart_home/features/domain/presentation/widgets/get_domain/no_domains_found.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'get_all_domains_view_body.dart';

class GetAllDomainsBlocBuilder extends StatelessWidget {
  const GetAllDomainsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllDomainsCubit, GetAllDomainsState>(
      builder: (context, state) {
        return state.when(
          getAllDomainsLoading: () {
            return const CustomCircularProgressIndicator(
              color: AppColors.orange,
            );
          },
          getAllDomainsSuccess: (getAllDomainsResponseBody, selectedIndex) {
            if (getAllDomainsResponseBody.domains.isEmpty) {
              return const NoDomainsFound();
            } else {
              return GetAllDomainsViewBody(
                getAllDomainsResponseBody: getAllDomainsResponseBody,
                selectedIndex: selectedIndex,
              );
            }
          },
          getAllDomainsFailure: (apiErrorModel) {
            return CustomErrorWidget(
              apiErrorModel: apiErrorModel,
              onTryAgain: () {
                BlocProvider.of<GetAllDomainsCubit>(context).getAllDomains();
              },
            );
          },
        );
      },
    );
  }
}
