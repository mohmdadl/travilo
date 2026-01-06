import 'package:flutter/material.dart';
import 'package:travilo/features/auth/presentation/views/forget_password_view.dart';

import '../../../../../../core/utils/styles.dart';
class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ForgetPasswordView.routeName);
      },
      child:  Text("Forgot Password ?",style:AppStyles.textStyleExtraLight16.copyWith(color: Color(0xff137CE6)),),
    );
  }
}
