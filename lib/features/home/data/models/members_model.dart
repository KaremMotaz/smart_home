import '../../../../core/theming/assets_data.dart';

class MembersModel {
  final String image;

  MembersModel({required this.image});

  static List<MembersModel> membersList = [
    MembersModel(image: AssetsData.member1),
    MembersModel(image: AssetsData.member2),
    MembersModel(image: AssetsData.member3),
  ];
}
