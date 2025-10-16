import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/text_styles.dart';

class AllRoomsHeader extends StatelessWidget {
  const AllRoomsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("All Rooms", style: TextStyles.medium18),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              splashColor: Colors.white38,
              highlightColor: Colors.white10,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AssetsData.arrowRightIcon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
