import 'package:flutter/material.dart';

import '../../home_layout.dart';
import '../../features/trips/presentation/views/trips_view.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeLayout.routeName:
      return MaterialPageRoute(builder: (context) => const HomeLayout());
    case TripsView.routeName:
      return MaterialPageRoute(builder: (context) => const TripsView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
