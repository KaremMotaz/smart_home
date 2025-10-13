import 'package:flutter/material.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/widgets/custom_error_widget.dart';

class TryView extends StatelessWidget {
  const TryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomErrorWidget(
          apiErrorModel: ApiErrorModel(message: "Try View Try View Try View Try View Try View Try ViewTry View Try View Try View"),
          onTryAgain: () {},
        ),
      ),
    );
  }
}
