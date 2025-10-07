import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/features/app/smart_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  runApp(const SmartHome());
}
