import '../../../../core/theming/app_assets.dart';

class RoomsModel {
  final String roomName;
  final String roomImage;

  RoomsModel({required this.roomName, required this.roomImage});

  static List<RoomsModel> roomsList = [
    RoomsModel(roomName: "Living Room", roomImage: AppAssets.livingRoom),
    RoomsModel(roomName: "Kitchen", roomImage: AppAssets.kitchen),
    RoomsModel(roomName: "Dining Room", roomImage: AppAssets.diningRoom),
  ];
}
