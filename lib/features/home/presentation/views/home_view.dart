import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/home/presentation/widgets/all_rooms_section.dart';
import 'package:smart_home/features/home/presentation/widgets/home_menu.dart';
import 'package:smart_home/features/home/presentation/widgets/members_section.dart';
import 'package:smart_home/features/home/presentation/widgets/temp_and_devices_section.dart';
import 'package:smart_home/features/home/presentation/widgets/welcome_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.homeBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeMenu(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TempAndDevicesSection(),
                    SizedBox(height: 38),
                    WelcomeSection(),
                    SizedBox(height: 32),
                    MembersSection(),
                    SizedBox(height: 34),
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
