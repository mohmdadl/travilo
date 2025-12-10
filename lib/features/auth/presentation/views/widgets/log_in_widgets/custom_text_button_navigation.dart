import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomTextButtonNavigation extends StatelessWidget {
  const CustomTextButtonNavigation({super.key, required this.text, required this.onTap, required this.textButton});
  final String text ;
  final void Function() onTap;
  final String textButton ;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(text,style: AppStyles.textStyleMedium18,),
        InkWell(
          onTap: onTap,
          child:  Text(textButton,style:AppStyles.textStyleExtraLight16.copyWith(color: Color(0xff137CE6)) ,),
        ),
      ],
    );
  }
}