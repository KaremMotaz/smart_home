import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import 'add_device_section.dart';

class TempAndDevicesSection extends StatelessWidget {
  const TempAndDevicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("28º", style: AppStyles.semiBold32),
        AddDeviceSection(),
      ],
    );
  }
}
