import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/device_icon_card.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/onboarding_1_center_card.dart';

class OnboardingDeviceGrid extends StatelessWidget {
  const OnboardingDeviceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const double radius = 35;
    return const SizedBox(
      height: 270,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: DeviceIconCard(
                    iconPath: AssetsData.bulb,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius),
                    ),
                  ),
                ),
                DeviceIconCard(
                  iconPath: AssetsData.screen,
                  rotationAngle: 45,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(radius),
                    topLeft: Radius.circular(radius),
                    bottomLeft: Radius.circular(radius),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: DeviceIconCard(
                    iconPath: AssetsData.fan,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(radius),
                      topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Onboarding1CenterCard(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: DeviceIconCard(
                    iconPath: AssetsData.speaker,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      topLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                  ),
                ),
                DeviceIconCard(
                  iconPath: AssetsData.airPurifier,
                  rotationAngle: -45,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                    bottomLeft: Radius.circular(radius),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: DeviceIconCard(
                    iconPath: AssetsData.cameraVideo,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(radius),
                      topRight: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
