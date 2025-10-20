import '../../../../core/theming/app_assets.dart';

class MembersModel {
  final String image;

  MembersModel({required this.image});

  static List<MembersModel> membersList = [
    MembersModel(image: AppAssets.member1),
    MembersModel(image: AppAssets.member2),
    MembersModel(image: AppAssets.member3),
  ];
}
