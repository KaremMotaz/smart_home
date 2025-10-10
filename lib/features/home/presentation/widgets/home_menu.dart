import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_data.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openDrawer();
        },
        child: SvgPicture.asset(AssetsData.menuIcon),
      ),
    );
  }
}
