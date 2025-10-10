import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/home/presentation/widgets/members_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.homeBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(AssetsData.menuIcon),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("28º", style: TextStyles.semiBold32),
                      Container(
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(62),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: ColorsManager.brown,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 38),
                  Text("Hi Dakolo", style: TextStyles.semiBold24),
                  SizedBox(height: 4),
                  Text(
                    "Welcome to your smart home",
                    style: TextStyles.regular16.copyWith(
                      color: Color(0xffC3C3C3),
                    ),
                  ),
                  SizedBox(height: 32),
                  MembersSection(),
                  SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Rooms", style: TextStyles.medium18),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(AssetsData.arrowRightIcon),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 38),
                  SizedBox(
                    height: 240,
                    width: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(AssetsData.diningRoom),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 16);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
