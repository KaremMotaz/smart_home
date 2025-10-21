import 'package:flutter/material.dart';

import 'device_header.dart';
import 'devices_list_view.dart';

class DeviceSection extends StatelessWidget {
  const DeviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [DeviceHeader(), SizedBox(height: 32), DevicesListView()],
    );
  }
}
