import 'package:flutter/material.dart';

import '../../../../core/theming/app_assets.dart';
import 'device_icon_card.dart';
import 'onboarding_1_center_card.dart';

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
                    iconPath: AppAssets.bulb,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius),
                    ),
                  ),
                ),
                DeviceIconCard(
                  iconPath: AppAssets.screen,
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
                    iconPath: AppAssets.fan,
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
                    iconPath: AppAssets.speaker,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      topLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                  ),
                ),
                DeviceIconCard(
                  iconPath: AppAssets.airPurifier,
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
                    iconPath: AppAssets.cameraVideo,
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
