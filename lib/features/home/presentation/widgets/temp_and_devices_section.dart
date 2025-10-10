import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/home/presentation/widgets/add_device_section.dart';

class TempAndDevicesSection extends StatelessWidget {
  const TempAndDevicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("28º", style: TextStyles.semiBold32),
        AddDeviceSection(),
      ],
    );
  }
}
