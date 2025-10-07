import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

abstract class TextStyles {
  static const TextStyle semiBold26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: 'Poppins',
  );
  static const TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Poppins',
  );
  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Poppins',
  );
}
