import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';
import 'no_domains_found.dart';
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
            return GetAllDomainsViewBody(
              domains: Domain.dummyDomains,
              selectedIndex: 0,
              isLoading: true,
            );
          },
          getAllDomainsSuccess: (getAllDomainsResponseBody, selectedIndex) {
            if (getAllDomainsResponseBody.domains.isEmpty) {
              return const NoDomainsFound();
            } else {
              return GetAllDomainsViewBody(
                domains: getAllDomainsResponseBody.domains,
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
