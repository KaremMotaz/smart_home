import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/services/cache_helper.dart';

void logout(BuildContext context) {
  CacheHelper.set(key: kAccessToken, value: null);
  GoRouter.of(context).push(Routes.loginView);
}
