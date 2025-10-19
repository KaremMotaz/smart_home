import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/home/presentation/widgets/custom_divider.dart';

class CustomEditProfileWidget extends StatelessWidget {
  const CustomEditProfileWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.data,
  });
  final void Function() onPressed;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
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
                        onPressed: onPressed,
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
