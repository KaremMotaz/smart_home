import 'package:flutter/material.dart';
import '../../data/models/rooms_model.dart';
import '../../../../core/theming/app_styles.dart';
import 'custom_switch.dart';

class RoomDetailsSection extends StatelessWidget {
  const RoomDetailsSection({super.key, required this.room});
  final RoomsModel room;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 33),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                room.roomName,
                style: AppStyles.bold30.copyWith(color: Colors.white),
              ),
              const CustomSwitch(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Your ${room.roomName.toLowerCase()} is connected with 5 devices and 2 users have access to the livng room.",
            style: AppStyles.regular16.copyWith(color: const Color(0xffC3C3C3)),
          ),
          const SizedBox(height: 24),
          Text(
            "28º",
            style: AppStyles.semiBold24.copyWith(
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
        ],
      ),
    );
  }
}
