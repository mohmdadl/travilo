import 'package:flutter/material.dart';

import 'package:travilo/core/widgets/custom_button.dart';
import 'package:travilo/core/widgets/custom_rich_text.dart';

class ForgetPasswordActions extends StatelessWidget {
  const ForgetPasswordActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(onTap: () {}, text: "Send Reset Link", withIcon: true),
        const SizedBox(height: 24),
        CustomRichText(
          text1: "Remember password?",
          text2: "Log in",
          ontap: () {},
        ),
      ],
    );
  }
}
