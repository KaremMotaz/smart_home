import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import 'members_list_view.dart';

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
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const MembersListView(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 6),
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                splashColor: Colors.white70,
                highlightColor: Colors.white10,
                child: const CircleAvatar(
                  radius: 22.5,
                  backgroundColor: AppColors.lighterGrey,
                  child: Icon(Icons.add, color: AppColors.grey, size: 35),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
