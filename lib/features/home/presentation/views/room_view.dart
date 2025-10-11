import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/home/presentation/widgets/selected_room_card.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetsData.livingRoom,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: SelectedRoomCard()),
        ],
      ),
    );
  }
}
