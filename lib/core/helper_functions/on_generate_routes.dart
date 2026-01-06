import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/actevity/persentation/view/actvity_view.dart';
import 'package:travilo/features/auth/data/repo/auth_repo.dart';
import 'package:travilo/features/auth/data/repo/google_auth_repo_services.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_google_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/login_cubit.dart';
import 'package:travilo/features/expolre/presentation/views/explore_view.dart';
import 'package:travilo/features/payment/persentation/view/booking_review_view.dart';
import 'package:travilo/features/payment/persentation/view/payment_details_view.dart';
import 'package:travilo/features/payment/persentation/view/payment_failure_view.dart';
import 'package:travilo/features/payment/persentation/view/payment_method_view.dart';
import 'package:travilo/features/payment/persentation/view/payment_success_view.dart';
import 'package:travilo/features/reviews/presentation/views/favourite_reviews_view.dart';
import 'package:travilo/features/reviews/presentation/views/rating_all_user_view.dart';
import 'package:travilo/features/reviews/presentation/views/write_review_view.dart';
import 'package:travilo/home_layout.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
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
      return MaterialPageRoute(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LoginCubit(AuthRepo())),
            BlocProvider(
              create: (context) => GoogleAuthCubit(
                googleAuthService: GoogleAuthService(),
                authRepo: AuthRepo(),
              ),
            ),
          ],
          child: SignInView(),
        ),
      );
    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => AuthCubit(AuthRepo()),
          child: const SignUpView(),
        ),
      );
    // case ConfirmEmailView.routeName:
    //   return MaterialPageRoute(builder: (context) => const ConfirmEmailView());
    case ForgetPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => AuthCubit(AuthRepo()),
          child: const ForgetPasswordView(),
        ),
      );
    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());
    case RatingAllUserView.routeName:
      return MaterialPageRoute(builder: (context) => const RatingAllUserView());
    case ExploreView.routeName:
      return MaterialPageRoute(builder: (context) => const ExploreView());
    case ActevityView.routeName:
      return MaterialPageRoute(builder: (context) => const ActevityView());
    case WriteReviewView.routeName:
      return MaterialPageRoute(builder: (context) => const WriteReviewView());
    case FavouriteReviewsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const FavouriteReviewsView(),
      );
    case BookingReviewView.routeName:
      return MaterialPageRoute(builder: (context) => const BookingReviewView());
    case PaymentDetailsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentDetailsView(),
      );
    case PaymentMethodView.routeName:
      return MaterialPageRoute(builder: (context) => const PaymentMethodView());
    case PaymentSuccessView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentSuccessView(),
      );
    case PaymentFailureView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentFailureView(),
      );

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
