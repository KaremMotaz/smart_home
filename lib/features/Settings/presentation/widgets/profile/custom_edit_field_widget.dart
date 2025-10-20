import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../home/presentation/widgets/custom_divider.dart';

class CustomEditFieldWidget extends StatelessWidget {
  const CustomEditFieldWidget({
    super.key,
    required this.title,
    required this.data,
  });
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              GoRouter.of(
                context,
              ).push(Routes.editProfileView, extra: {"title": title});
              // GoRouter.of(context).push(Routes.fingerLoginView);
            },
            splashColor: AppColors.lighterGrey,
            highlightColor: AppColors.lighterGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 7.5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: AppStyles.semiBold20.copyWith(
                                color: AppColors.grey,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              data,
                              style: AppStyles.semiBold18,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.edit, size: 22, color: AppColors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 7.5),
        const CustomDivider(color: AppColors.grey, horizontalPadding: 20),
        const SizedBox(height: 7.5),
      ],
    );
  }
}
