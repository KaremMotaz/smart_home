import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/services/cache_helper.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/get_all_domains_response_body.dart';
import '../../manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'domain_card.dart';

class GetAllDomainsViewBody extends StatelessWidget {
  const GetAllDomainsViewBody({
    super.key,
    required this.getAllDomainsResponseBody,
    required this.selectedIndex,
  });

  final GetAllDomainsResponseBody getAllDomainsResponseBody;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final List<Domain> domains = getAllDomainsResponseBody.domains;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Your Domains", style: AppStyles.bold18),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: domains.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                final domain = domains[index];
                return DomainCard(
                  name: domain.name,
                  alias: domain.alias,
                  isSelected: selectedIndex == index,
                  onTap: () {
                    context.read<GetAllDomainsCubit>().selectDomain(index);
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          AppTextButton(
            onPressed: selectedIndex == -1
                ? () {
                    errorSnackBar(
                      context: context,
                      message: "Please select a domain",
                    );
                  }
                : () {
                    CacheHelper.setSecureData(
                      key: kSelectedDomainId,
                      value: domains[selectedIndex].id,
                    );
                    CacheHelper.set(
                      key: kSelectedDomainIndex,
                      value: selectedIndex,
                    );
                    successSnackBar(
                      context: context,
                      message: "Domain Selected Successfully",
                    );
                    GoRouter.of(context).pushReplacement(Routes.homeView);
                  },
            buttonText: "Submit",
            buttonWidth: double.infinity,
            backgroundColor: AppColors.darkerbrown,
            borderRadius: 25,
            textStyle: AppStyles.bold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
