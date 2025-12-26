import 'package:flutter/cupertino.dart';

import 'app_color.dart';

abstract class AppStyles
{
  static const textStyleBold24 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24
  );
  static const textStyleBold22 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 22
  );

  static const textStyleBold18 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18
  );
  static const textStyleSemiBold16 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16
  );
  static const textStyleExtraLight24 = TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 24
  );
  static const textStyleMedium18= TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18
  );
  static const textStyleMedium16= TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16
  );
  static const textStyleExtraLight18= TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 18
  );
  static const textStyleExtraLight16= TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16
  );
  static const textStyleExtraLight14= TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14
  );

  static const textStyleBold20 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.primaryColor

  );
  static const textStyleBoldDark20 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Color(0xFF707D8F),

  );
  static const textStyleBoldBlue20 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.buttonColor

  );
  static const textStyleBold34 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 34,
    color: AppColors.primaryColor,
  );

  static const textStyleMedium20 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: Color(0xFF95A4B9),
  );


  }
