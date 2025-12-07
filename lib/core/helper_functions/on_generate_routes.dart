import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/sign_in_view.dart';


Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {

    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    // case SignUpView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
