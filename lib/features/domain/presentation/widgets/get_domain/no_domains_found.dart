import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/app_assets.dart';
import 'package:smart_home/core/theming/app_styles.dart';

class NoDomainsFound extends StatelessWidget {
  const NoDomainsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.noData, height: 200, width: 200),
          const SizedBox(height: 10),
          const Text("No Domains Found", style: AppStyles.bold18),
        ],
      ),
    );
  }
}
