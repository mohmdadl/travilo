import 'package:flutter/material.dart';
import 'package:travilo/features/actevity/persentation/view/actvity_view.dart';
import 'package:travilo/features/expolre/presentation/views/explore_view.dart';
import 'package:travilo/features/reviews/presentation/views/favourite_reviews_view.dart';
import 'package:travilo/features/reviews/presentation/views/rating_all_user_view.dart';
import 'package:travilo/features/reviews/presentation/views/write_review_view.dart';
import 'package:travilo/home_layout.dart';

import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';


Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {

    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
       case RatingAllUserView.routeName:
       return MaterialPageRoute(builder: (context) => const RatingAllUserView());
        case HomeLayout.routeName:
       return MaterialPageRoute(builder: (context) => const HomeLayout());
       case ExploreView.routeName:
       return MaterialPageRoute(builder: (context) => const ExploreView());
        case ActevityView.routeName:
       return MaterialPageRoute(builder: (context) => const ActevityView());
        case WriteReviewView.routeName:
       return MaterialPageRoute(builder: (context) => const WriteReviewView());
       case FavouriteReviewsView.routeName:
       return MaterialPageRoute(builder: (context) => const FavouriteReviewsView());
       


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
