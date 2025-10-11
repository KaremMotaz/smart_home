import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/home/presentation/widgets/custom_switch.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class SelectedRoomCard extends StatelessWidget {
  const SelectedRoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.darkerbrown.withAlpha(242),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          RoomDetailsSection(),
          const Divider(
            color: Colors.white,
            thickness: 0.3,
            height: 0,
            indent: 30,
            endIndent: 30,
          ),
          const SizedBox(height: 28),
          DeviceSection(),
          const SizedBox(height: 33),
        ],
      ),
    );
  }
}

class RoomDetailsSection extends StatelessWidget {
  const RoomDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 33),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Living room",
                style: TextStyles.bold30.copyWith(color: Colors.white),
              ),
              CustomSwitch(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Your living room is connected with 5 devices and 2 users have access to the livng room.",
            style: TextStyles.regular16.copyWith(color: Color(0xffC3C3C3)),
          ),
          SizedBox(height: 24),
          Text(
            "28º",
            style: TextStyles.semiBold24.copyWith(color: Colors.white),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class DeviceSection extends StatelessWidget {
  const DeviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Devices",
                style: TextStyles.medium16.copyWith(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsData.arrowRightIcon,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              children: [
                DeviceCard(
                  deviceIcon: AssetsData.wifiIcon,
                  deviceName: "WiFi",
                  deviceStatus: "on",
                ),
                const SizedBox(width: 16),
                DeviceCard(
                  deviceIcon: AssetsData.lightIcon,
                  deviceName: "Light",
                  deviceStatus: "on",
                ),
                const SizedBox(width: 16),
                DeviceCard(
                  deviceIcon: AssetsData.tempIcon,
                  deviceName: "Temp",
                  deviceStatus: "28ºC",
                ),
                const SizedBox(width: 16),
                DeviceCard(
                  deviceIcon: AssetsData.fanIcon,
                  deviceName: "Fan",
                  deviceStatus: "off",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    super.key,
    required this.deviceIcon,
    required this.deviceName,
    required this.deviceStatus,
  });

  final String deviceIcon;
  final String deviceName;
  final String deviceStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11, left: 12, right: 12),
      decoration: BoxDecoration(
        color: Color(0xff8F857E).withAlpha(102),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEDEDED),
            ),
            child: Image.asset(deviceIcon),
          ),
          const SizedBox(height: 16),
          Text(
            deviceName,
            style: TextStyles.semiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            deviceStatus,
            style: TextStyles.regular16.copyWith(color: Color(0xffC3C3C3)),
          ),
        ],
      ),
    );
  }
}
