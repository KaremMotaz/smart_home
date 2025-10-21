import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'get_all_domains_view_body.dart';

class GetAllDomainsViewBodyBlocBuilder extends StatelessWidget {
  const GetAllDomainsViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllDomainsCubit, GetAllDomainsState>(
      builder: (context, state) {
        return state.when(
          getAllDomainsLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          getAllDomainsSuccess: (getAllDomainsResponseBody, selectedIndex) {
            if (getAllDomainsResponseBody.domains.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.noData, height: 200, width: 200),
                    const SizedBox(height: 10),
                    const Text("No Domains Found", style: AppStyles.bold18),
                  ],
                ),
              );
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
