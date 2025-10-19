import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/core/widgets/app_text_button.dart';

Future<dynamic> profileUpdatedShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
            top: 20,
            bottom: 35,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(AssetsData.bubbles, height: 130),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff0f2fd),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe1e9f5),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff2784ff), Color(0xff25d6ff)],
                          ),
                        ),
                        child: SvgPicture.asset(
                          AssetsData.checkMark,
                          width: 20,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Text("Profile Updated", style: TextStyles.semiBold20),
              const SizedBox(height: 5),
              const Text(
                "Congratulations has been updated successfully updated enjoy your next trip on our app",
                textAlign: TextAlign.center,
                style: TextStyles.regular14,
              ),
              const SizedBox(height: 30),
              AppTextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                buttonText: "Okey, Thanks",
                backgroundColor: const Color(0xff4b77f5),
                borderRadius: 30,
                buttonWidth: double.infinity,
              ),
            ],
          ),
        ),
      );
    },
  );
}
