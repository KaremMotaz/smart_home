import 'package:flutter/material.dart';
import 'custom_divider.dart';
import 'device_section.dart';
import 'room_details_section.dart';
import '../../../../core/theming/colors_manager.dart';

class SelectedRoomCard extends StatelessWidget {
  const SelectedRoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.darkerbrown.withAlpha(242),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const Column(
        children: [
          RoomDetailsSection(),
          SizedBox(height: 32),
          CustomDivider(horizontalPadding: 30),
          SizedBox(height: 28),
          DeviceSection(),
          SizedBox(height: 33),
        ],
      ),
    );
  }
}
