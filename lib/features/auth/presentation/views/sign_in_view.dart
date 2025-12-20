import 'package:flutter/material.dart';
import 'package:travilo/features/reviews/presentation/views/favourite_reviews_view.dart';
import 'package:travilo/features/reviews/presentation/views/rating_all_user_view.dart';



class SignInView extends StatelessWidget {
  const SignInView({super.key});
static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FavouriteReviewsView(),
    );
  }
}
