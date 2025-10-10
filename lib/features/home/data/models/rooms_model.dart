import 'package:smart_home/core/theming/assets_data.dart';

class RoomsModel {
  final String roomName;
  final String roomImage;

  RoomsModel({required this.roomName, required this.roomImage});

  static List<RoomsModel> roomsList = [
    RoomsModel(roomName: "Living Room", roomImage: AssetsData.livingRoom),
    RoomsModel(roomName: "Kitchen", roomImage: AssetsData.kitchen),
    RoomsModel(roomName: "Dining Room", roomImage: AssetsData.diningRoom),
  ];
}
