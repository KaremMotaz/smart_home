import 'package:flutter/material.dart';

import '../../../../../core/theming/app_assets.dart';
import 'device_card.dart';

class DevicesListView extends StatelessWidget {
  const DevicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          children: const [
            DeviceCard(
              deviceIcon: AppAssets.wifiIcon,
              deviceName: "WiFi",
              deviceStatus: "on",
            ),
            SizedBox(width: 16),
            DeviceCard(
              deviceIcon: AppAssets.lightIcon,
              deviceName: "Light",
              deviceStatus: "on",
            ),
            SizedBox(width: 16),
            DeviceCard(
              deviceIcon: AppAssets.tempIcon,
              deviceName: "Temp",
              deviceStatus: "28ºC",
            ),
            SizedBox(width: 16),
            DeviceCard(
              deviceIcon: AppAssets.fanIcon,
              deviceName: "Fan",
              deviceStatus: "off",
            ),
          ],
        ),
      ),
    );
  }
}
