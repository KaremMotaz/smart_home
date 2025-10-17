import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/manager/inactivity_cubit/inactivity_cubit.dart';
import 'package:smart_home/core/routing/routes.dart';

import '../../core/routing/app_router.dart';
import '../../core/theming/theme_manager.dart';

class SmartHome extends StatelessWidget {
  const SmartHome({super.key, required this.initialRoute});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InactivityCubit, InactivityState>(
      listener: (context, state) {
        if (state.isLocked) {
          context.go(Routes.fingerLoginView);
        }
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.getAppTheme(),
        routerConfig: AppRouter.createRouter(initialRoute: initialRoute),
      ),
    );
  }
}
