import 'package:flutter/material.dart';
import 'package:smart_home/features/home/data/models/rooms_model.dart';
import 'package:smart_home/features/home/presentation/widgets/room_card.dart';

class AllRoomsListView extends StatelessWidget {
  const AllRoomsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<RoomsModel> roomsList = RoomsModel.roomsList;

    return SizedBox(
      height: 280,
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
