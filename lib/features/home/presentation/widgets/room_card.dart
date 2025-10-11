import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/rooms_model.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key, required this.roomsModel});
  final RoomsModel roomsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.roomView, extra: roomsModel);
      },
      child: SizedBox(
        width: 120,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    roomsModel.roomImage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Text(
              roomsModel.roomName,
              style: TextStyles.extraBold14.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
