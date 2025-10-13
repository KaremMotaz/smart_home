import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/core/widgets/custom_error_widget.dart';
import 'package:smart_home/features/domain/manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/get_all_domains_view_body.dart';

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
                    Image.asset(AssetsData.noData, height: 200, width: 200),
                    const SizedBox(height: 10),
                    const Text("No Domains Found", style: TextStyles.bold18),
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
