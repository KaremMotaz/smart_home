import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/text_styles.dart';
import 'all_rooms_list_view.dart';

class AllRoomsSection extends StatelessWidget {
  const AllRoomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("All Rooms", style: TextStyles.medium18),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(AssetsData.arrowRightIcon),
              ),
            ),
          ],
        ),
        SizedBox(height: 38),
        AllRoomsListView(),
      ],
    );
  }
}
