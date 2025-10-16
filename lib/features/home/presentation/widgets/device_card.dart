import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    super.key,
    required this.deviceIcon,
    required this.deviceName,
    required this.deviceStatus,
  });

  final String deviceIcon;
  final String deviceName;
  final String deviceStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 11, left: 12, right: 12),
      decoration: BoxDecoration(
        color: const Color(0xff8F857E).withAlpha(102),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEDEDED),
            ),
            child: Image.asset(deviceIcon),
          ),
          const SizedBox(height: 16),
          Text(
            deviceName,
            style: TextStyles.semiBold16.copyWith(
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
          const SizedBox(height: 4),
          Text(
            deviceStatus,
            style: TextStyles.regular16.copyWith(
              color: const Color(0xffC3C3C3),
            ),
          ),
        ],
      ),
    );
  }
}
