import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle get heading1 => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle get heading2 => GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle get sectionTitle => GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle get bodyLarge =>
      GoogleFonts.inter(fontSize: 16, color: AppColors.white);

  static TextStyle get bodyMedium =>
      GoogleFonts.inter(fontSize: 14, color: AppColors.white70);

  static TextStyle get bodySmall =>
      GoogleFonts.inter(fontSize: 12, color: AppColors.white54);

  // Add more specific styles as needed based on current usage
  // Legacy Styles
  static const textStyleBold24 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  static const textStyleBold22 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 22,
  );

  static const textStyleBold18 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
  static const textStyleSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    fontFamily: 'Inter', // Assuming Inter is default, but for safe measures.
  );
  static const textStyleSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const textStyleExtraLight24 = TextStyle(
    fontWeight: FontWeight.w200,
    fontSize: 24,
  );
  static const textStyleMedium18 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const textStyleMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const textStyleExtraLight18 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 18,
  );
  static const textStyleExtraLight16 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
  static const textStyleExtraLight14 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );
}
