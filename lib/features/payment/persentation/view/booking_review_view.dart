import 'package:flutter/material.dart';
import 'package:travilo/features/payment/persentation/view/widgets/booking_review_view_body.dart';

class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key});
static const String routeName = 'bookingReview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BookingReviewViewBody() ,
    );
  }
}