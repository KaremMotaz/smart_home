import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/core/services/cache_helper.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/features/app/smart_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await setupGetIt();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  runApp(const SmartHome());
}
