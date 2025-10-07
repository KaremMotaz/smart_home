import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/text_styles.dart';

class TextBody extends StatelessWidget {
  const TextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27),
      child: Transform.translate(
        offset: const Offset(0, -14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configure Your \nMoments",
              style: TextStyles.semiBold26.copyWith(color: Color(0xffFFDEDE)),
            ),
            Text(
              "Manage your home from anytime,\nanywhere.",
              style: TextStyles.regular14.copyWith(color: Color(0xffCFEDFF)),
            ),
          ],
        ),
      ),
    );
  }
}
