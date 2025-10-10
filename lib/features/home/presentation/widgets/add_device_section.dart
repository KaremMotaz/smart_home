import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';

class AddDeviceSection extends StatelessWidget {
  const AddDeviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(62),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 25,
              backgroundColor: ColorsManager.brown,
              child: Icon(Icons.add, color: Colors.white, size: 35),
            ),
          ),
        ),
      ),
    );
  }
}
