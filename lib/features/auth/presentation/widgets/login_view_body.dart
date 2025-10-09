import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/features/auth/manager/login_cubit/login_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/login_form.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody>
    with SingleTickerProviderStateMixin {
  PersistentBottomSheetController? sheetController;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAnimatedPersistentSheet(context);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showAnimatedPersistentSheet(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    final height = MediaQuery.of(context).size.height * 0.72;

    sheetController = Scaffold.of(context).showBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      constraints: BoxConstraints(maxHeight: height),
      (ctx) {
        _animationController.forward();
        return AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Opacity(
              opacity: _fadeAnimation.value,
              child: FractionalTranslation(
                translation: _slideAnimation.value,
                child: child,
              ),
            );
          },
          child: BlocProvider.value(
            value: loginCubit,
            child: Container(
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: LoginForm(),
              ),
            ),
          ),
        );
      },
      enableDrag: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Padding(
      padding: EdgeInsets.only(top: topPadding + 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => GoRouter.of(context).go(Routes.welcomeView),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: ColorsManager.darkerBlue,
                ),
              ),
              TextButton(
                onPressed: () => GoRouter.of(context).push(Routes.registerView),
                child: Text(
                  "Register",
                  style: TextStyles.bold16.copyWith(
                    color: ColorsManager.darkerBlue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Login",
            style: TextStyles.bold24.copyWith(color: ColorsManager.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Login now and take control of your smart home effortlessly, all from the palm of your hand.",
            style: TextStyles.medium14.copyWith(
              color: ColorsManager.darkerBlue,
            ),
          ),
        ],
      ),
    );
  }
}
