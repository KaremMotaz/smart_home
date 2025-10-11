import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/finger_login_view_body.dart';

class FingerLoginView extends StatelessWidget {
  const FingerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(body: FingerLoginViewBody()),
    );
  }
}
