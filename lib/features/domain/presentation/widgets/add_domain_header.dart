import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class AddDomainHeader extends StatelessWidget {
  const AddDomainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Add Domain",
              style: TextStyles.semiBold14.copyWith(
                color: ColorsManager.darkerBlue,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Add Domain",
            style: TextStyles.bold24.copyWith(color: ColorsManager.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Add a new domain to organize, connect, and control your smart devices effortlessly.",
            style: TextStyles.medium14.copyWith(
              color: ColorsManager.darkerBlue,
            ),
          ),
        ],
      ),
    );
  }
}
