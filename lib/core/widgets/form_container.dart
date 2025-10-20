import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(50),
      topRight: Radius.circular(50),
    ),
    this.scrollable = true,
  });

  final Widget child;
  final Color backgroundColor;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: padding,
      child: child,
    );

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: scrollable
          ? SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: content,
            )
          : content,
    );
  }
}
