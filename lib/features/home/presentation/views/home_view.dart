import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../widgets/all_rooms_section.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/home_menu.dart';
import '../widgets/members_section.dart';
import '../widgets/temp_and_devices_section.dart';
import '../widgets/welcome_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.homeBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeMenu(scaffoldKey: scaffoldKey),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TempAndDevicesSection(),
                    SizedBox(height: 38),
                    WelcomeSection(),
                    SizedBox(height: 32),
                    MembersSection(),
                    SizedBox(height: 32),
                    AllRoomsSection(),
                    SizedBox(height: 64),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
