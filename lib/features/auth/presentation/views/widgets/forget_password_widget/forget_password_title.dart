import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class ForgetPasswordTitle extends StatelessWidget {
  const ForgetPasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Forgot Password?",
          style: AppStyles.textStyleBold34,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          "Don’t worry! It happens. Please enter the email address associated with your account.",
          textAlign: TextAlign.center,
          style: AppStyles.textStyleMedium20,
        ),
      ],
    );
  }
}
