import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../home/presentation/widgets/custom_divider.dart';

class CustomEditProfileWidget extends StatelessWidget {
  const CustomEditProfileWidget({
    super.key,
    required this.title,
    required this.data,
    required this.route,
  });
  final String title;
  final String data;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(route);
              GoRouter.of(context).push(Routes.fingerLoginView);
            },
            splashColor: ColorsManager.lighterGrey,
            highlightColor: ColorsManager.lighterGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
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
                              style: TextStyles.semiBold20.copyWith(
                                color: ColorsManager.grey,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              data,
                              style: TextStyles.semiBold18,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).push(route);
                          GoRouter.of(context).push(Routes.fingerLoginView);
                        },
                        icon: const Icon(
                          Icons.edit,
                          size: 22,
                          color: ColorsManager.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 7.5),
        const CustomDivider(color: ColorsManager.grey, horizontalPadding: 20),
        const SizedBox(height: 7.5),
      ],
    );
  }
}
