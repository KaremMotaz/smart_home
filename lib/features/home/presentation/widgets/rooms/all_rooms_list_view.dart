import 'package:flutter/material.dart';

import '../../../data/models/rooms_model.dart';
import 'room_card.dart';

class AllRoomsListView extends StatelessWidget {
  const AllRoomsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RoomsModel> roomsList = RoomsModel.roomsList;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: roomsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: RoomCard(roomsModel: roomsList[index]),
          );
        },
      ),
    );
  }
}
