import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.logOutColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.logout,
              size: 25,
              color: AppColors.logOutTextColor,
            ),
            const SizedBox(width: 8),
            Text(
              "Log Out",
              style: AppStyles.textStyleBold24.copyWith(
                color: AppColors.logOutTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
