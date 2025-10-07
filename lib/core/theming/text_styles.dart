import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

abstract class TextStyles {
  static const TextStyle semiBold30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: 'Poppins',
  );
  static const TextStyle regular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Poppins',
  );
}
