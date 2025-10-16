import 'package:flutter/material.dart';
import '../networking/api_error_model.dart';
import '../theming/assets_data.dart';
import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';
import 'app_text_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.apiErrorModel,
    required this.onTryAgain,
  });
  final ApiErrorModel apiErrorModel;
  final VoidCallback onTryAgain;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetsData.error, width: 120),
            const SizedBox(height: 20),
            Text(
              "Oops !!",
              style: TextStyles.bold22.copyWith(color: ColorsManager.darkRed),
            ),
            if (apiErrorModel.error != null) ...[
              const SizedBox(height: 20),
              Text(
                apiErrorModel.error!,
                textAlign: TextAlign.center,
                style: TextStyles.semiBold16,
              ),
            ],
            const SizedBox(height: 20),
            Text(
              apiErrorModel.message,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold16,
            ),
            const SizedBox(height: 40),
            AppTextButton(
              onPressed: onTryAgain,
              buttonText: "Try Again",
              backgroundColor: ColorsManager.darkRed,
              borderRadius: 50,
              horizontalPadding: 60,
              textStyle: TextStyles.semiBold18.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
