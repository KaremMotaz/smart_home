import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/onboarding_page_view.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/services/cache_helper.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../widgets/page_view_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPageIndex = _pageController.page!.round();
      });
    });
  }

  void goToNextPage() {
    if (currentPageIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<PageViewItem> get pages => [
    PageViewItem(
      title: "Control\nYour Devices",
      description:
          "Take charge of your devices\nwith ease. Simplify your\ncontrol experience.",
      currentPageIndex: currentPageIndex,
    ),
    PageViewItem(
      title: "Add Smart Service\nto Your Home",
      description:
          "Elevate your home with new services.\nEnhance convenience and comfort\neffortlessly.",
      currentPageIndex: currentPageIndex,
    ),
    PageViewItem(
      title: "Experience the\nultimate in home\ncontrol",
      description:
          "Simplify your life and transform your\nhome into a smart sanctuary today.",
      currentPageIndex: currentPageIndex,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                  pageController: _pageController,
                  pages: pages,
                ),
                DotsIndicator(
                  dotsCount: 3,
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
                  onPressed: () {
                    if (currentPageIndex < pages.length - 1) {
                      goToNextPage();
                      return;
                    }
                    CacheHelper.set(key: kHasSeenOnboarding, value: true);
                    GoRouter.of(context).pushReplacement(Routes.welcomeView);
                  },
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
                    onPressed: () {
                      CacheHelper.set(key: kHasSeenOnboarding, value: true);
                      GoRouter.of(context).pushReplacement(Routes.welcomeView);
                    },
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
      ),
    );
  }
}
