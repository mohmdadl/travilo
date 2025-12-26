import 'package:flutter/material.dart';

import '../app_color.dart';
import '../app_images.dart';
import '../styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool withIcon;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.withIcon = false,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: AppStyles.textStyleBold24.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            withIcon ? const SizedBox(width: 8) : const SizedBox(),
            withIcon
                ? Image(image: AssetImage(AppImages.arrowIcon))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
