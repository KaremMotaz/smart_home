import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';

class CustomSettingsItem extends StatelessWidget {
  const CustomSettingsItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final Function() onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white54,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white54,
        highlightColor: Colors.white54,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: ColorsManager.lightGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, size: 22),
            ),
            const SizedBox(width: 15),
            Text(title, style: TextStyles.semiBold16),
            const Spacer(),
            const CircleAvatar(
              radius: 16,
              backgroundColor: ColorsManager.lightGrey,
              child: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
