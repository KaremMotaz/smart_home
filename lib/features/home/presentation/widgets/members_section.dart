import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/home/presentation/widgets/members_list_view.dart';

class MembersSection extends StatelessWidget {
  const MembersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          MembersListView(),
          Padding(
            padding: const EdgeInsets.all(6),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 22.5,
                backgroundColor: ColorsManager.lighterGrey,
                child: Icon(Icons.add, color: ColorsManager.grey, size: 35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
