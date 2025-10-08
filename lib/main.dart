import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/services/cache_helper.dart';
import 'core/services/get_it_service.dart';
import 'features/app/smart_home.dart';

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
