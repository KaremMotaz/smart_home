import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'onboarding_page_view.dart';
import '../widgets/page_view_item.dart';

class OnboardingViewBody extends StatelessWidget {
  final int currentPageIndex;
  final PageController pageController;
  final List<PageViewItem> pages;
  final VoidCallback onNextPressed;
  final VoidCallback onFinishPressed;

  const OnboardingViewBody({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
    required this.pages,
    required this.onNextPressed,
    required this.onFinishPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: currentPageIndex == pages.length - 1,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Image.asset(
            AssetsData.bgOnboarding,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Visibility(
                visible: currentPageIndex == pages.length - 1,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Text.rich(
                    TextSpan(
                      text: "One",
                      style: TextStyles.bold20.copyWith(
                        color: ColorsManager.darkerbrown,
                      ),
                      children: [
                        TextSpan(
                          text: "touch",
                          style: TextStyles.semiBold20.copyWith(
                            color: ColorsManager.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              OnboardingPageView(
                pageController: pageController,
                pages: pages,
              ),
              DotsIndicator(
                dotsCount: pages.length,
                position: currentPageIndex.toDouble(),
                decorator: DotsDecorator(
                  color: ColorsManager.lightGrey,
                  activeColor: ColorsManager.darkerbrown,
                  size: const Size.square(9),
                  activeSize: const Size(22, 9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                animate: true,
              ),
              const SizedBox(height: 15),
              AppTextButton(
                buttonWidth: double.infinity,
                borderColor: Colors.transparent,
                backgroundColor: ColorsManager.darkerbrown,
                borderRadius: 50,
                textStyle: TextStyles.bold18.copyWith(color: Colors.white),
                onPressed: currentPageIndex < pages.length - 1
                    ? onNextPressed
                    : onFinishPressed,
                child: Text(
                  currentPageIndex < pages.length - 1
                      ? "Next"
                      : "Get Started",
                  style: TextStyles.medium18.copyWith(color: Colors.white),
                ),
              ),
              Visibility(
                visible: currentPageIndex < pages.length - 1,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: AppTextButton(
                  onPressed: onFinishPressed,
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  buttonWidth: double.infinity,
                  child: Text(
                    "Skip",
                    style: TextStyles.bold16.copyWith(
                      color: ColorsManager.darkerbrown,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
