import 'package:smart_home/features/domains/data/models/domain_adapter.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response_adapter.dart';

import '../helpers/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Domains
    Hive.registerAdapter(DomainAdapter());
    Hive.registerAdapter(GetAllDomainsResponseAdapter());
    await Hive.openBox(kDomainsBox);
  }
}
