import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../data/models/rooms_model.dart';
import 'custom_divider.dart';
import 'device_section.dart';
import 'room_details_section.dart';

class SelectedRoomCard extends StatelessWidget {
  const SelectedRoomCard({super.key, required this.room});
  final RoomsModel room;

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
      child: Column(
        children: [
          RoomDetailsSection(room: room),
          const SizedBox(height: 32),
          const CustomDivider(horizontalPadding: 30),
          const SizedBox(height: 28),
          const DeviceSection(),
          const SizedBox(height: 33),
        ],
      ),
    );
  }
}
