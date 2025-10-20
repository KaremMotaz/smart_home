import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/rooms_model.dart';
import '../widgets/selected_room_card.dart';

class SelectedRoomView extends StatelessWidget {
  const SelectedRoomView({super.key, required this.room});
  final RoomsModel room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            room.roomImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 5,
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                splashColor: Colors.white24,
                highlightColor: Colors.white10,
                splashRadius: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SelectedRoomCard(room: room),
          ),
        ],
      ),
    );
  }
}
