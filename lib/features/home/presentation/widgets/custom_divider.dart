import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.horizontalPadding});
  final double? horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.white,
      thickness: 0.3,
      height: 0,
      indent: horizontalPadding,
      endIndent: horizontalPadding,
    );
  }
}
