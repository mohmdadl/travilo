import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {},
      child:  Text("Forgot Password ?",style:AppStyles.textStyleExtraLight24.copyWith(color: Color(0xff137CE6)),),
    );
  }
}
