import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/core/network/dio_client.dart';
import 'package:travilo/core/utils/pref_helper.dart';
import 'package:travilo/features/auth/presentation/views/sign_up_view.dart';
import 'core/helper_functions/on_generate_routes.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
   await PrefHelper.init();
  DioClient.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff101922),
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SignUpView.routeName,
    );
  }
}

