import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email Address",
          style: AppStyles.textStyleBold24.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 12),
        const CustomTextFormField(
          hintText: "hello@example.com",
          suffixIcon: Icon(Icons.email_outlined, color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
