import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/services/cache_helper.dart';
import 'core/services/get_it_service.dart';
import 'features/app/smart_home.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = super.createHttpClient(context);
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await setupGetIt();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  HttpOverrides.global = MyHttpOverrides();
  runApp(const SmartHome());
}
