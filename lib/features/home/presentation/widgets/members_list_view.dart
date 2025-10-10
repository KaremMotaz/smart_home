import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/home/data/models/members_model.dart';

class MembersListView extends StatelessWidget {
  const MembersListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<MembersModel> membersList = MembersModel.membersList;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: membersList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CircleAvatar(
          radius: 30,
          backgroundColor: ColorsManager.lighterGrey,
          backgroundImage: AssetImage(membersList[index].image),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 12);
      },
    );
  }
}
