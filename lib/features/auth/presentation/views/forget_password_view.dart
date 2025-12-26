import 'package:flutter/material.dart';
import 'package:travilo/features/auth/presentation/views/widgets/forget_password_widget/forget_password_body.dart';

import '../../../../core/utils/app_color.dart';
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName = 'forget-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: const ForgetPasswordBody(),
    );
  }
}
