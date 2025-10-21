import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';

class AddDeviceSection extends StatelessWidget {
  const AddDeviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(62),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Material(
            color: Colors.transparent,
            shape: const CircleBorder(),
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              splashColor: Colors.white70,
              highlightColor: Colors.white10,
              radius: 60,
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.brown,
                child: Icon(Icons.add, color: Colors.white, size: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
