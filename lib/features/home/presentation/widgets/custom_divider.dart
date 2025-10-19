import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.horizontalPadding, this.color});
  final double? horizontalPadding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? Colors.white,
      thickness: 0.6,
      height: 1,
      indent: horizontalPadding,
      endIndent: horizontalPadding,
    );
  }
}
