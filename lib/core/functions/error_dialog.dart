import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

void errorDialog({
  required BuildContext context,
  required String message,
  required String error,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return ErrorDialog(message: message, error: error);
    },
  );
}

class ErrorDialog extends StatelessWidget {
  final String message;
  final String error;

  const ErrorDialog({super.key, required this.message, required this.error});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, color: AppColors.red, size: 48),
          const SizedBox(height: 16),
          Text(message, style: AppStyles.bold20, textAlign: TextAlign.center),
          const SizedBox(height: 12),
          Text(error, style: AppStyles.medium16, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => GoRouter.of(context).pop(),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.darkerBlue),
            ),
            child: Text(
              "Dismiss",
              style: AppStyles.medium16.copyWith(color: AppColors.darkerBlue),
            ),
          ),
        ],
      ),
    );
  }
}
