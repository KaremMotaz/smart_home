import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/theming/assets_data.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(AssetsData.menuIcon),
      ),
    );
  }
}
