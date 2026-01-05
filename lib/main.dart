import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/features/auth/presentation/views/forget_password_view.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: ForgetPasswordView.routeName,
    );
  }
}
