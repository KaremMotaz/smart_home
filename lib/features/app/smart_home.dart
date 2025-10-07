import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/views/finger_login_view.dart';

class SmartHome extends StatelessWidget {
  const SmartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FingerLoginView(),
    );
  }
}
