import 'package:flutter/material.dart';
import 'package:travilo/features/auth/presentation/views/sign_in_view.dart';

import 'core/helper_functions/on_generate_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff101922)
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SignInView.routeName,
    );
  }
}

