import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/features/auth/presentation/widgets/finger_login_view_body.dart';

class FingerLoginView extends StatelessWidget {
  const FingerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(body: FingerLoginViewBody()),
    );
  }
}
