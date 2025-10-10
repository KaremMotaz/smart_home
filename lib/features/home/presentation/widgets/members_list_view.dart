import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';

class MembersListView extends StatelessWidget {
  const MembersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CircleAvatar(
          radius: 30,
          backgroundColor: ColorsManager.lighterGrey,
          backgroundImage: AssetImage(AssetsData.member1),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 12);
      },
    );
  }
}
