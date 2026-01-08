import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.text1,
    required this.text2,
    required this.ontap,
  });
  final String text1;
  final String text2;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text1, style: AppStyles.textStyleBold20),
          TextSpan(
            text: text2,
            style: AppStyles.textStyleBoldBlue20,
            recognizer: TapGestureRecognizer()..onTap = ontap,
          ),
        ],
      ),
    );
  }
}
