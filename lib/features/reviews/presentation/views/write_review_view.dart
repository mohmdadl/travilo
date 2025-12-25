import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/write_review_view_body.dart';

class WriteReviewView extends StatelessWidget {
  const WriteReviewView({super.key});
static const String routeName = 'writeReview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Write a Review", style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
        
      ),
      body:WriteReviewViewBody() ,
    );
  }
}