import 'package:flutter/material.dart';

import '../../home_layout.dart';
import '../../features/trips/presentation/views/trips_view.dart';
import 'package:travilo/features/ai_planner/presentation/views/ai_planner_view.dart';
import 'package:travilo/features/search/presentation/views/search_view.dart';
import 'package:travilo/features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case 'ai_planner':
      return MaterialPageRoute(builder: (context) => const AiPlannerView());
    case 'search_view':
      return MaterialPageRoute(builder: (context) => const SearchView());
    case 'home_layout':
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
