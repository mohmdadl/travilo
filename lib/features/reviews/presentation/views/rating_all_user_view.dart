import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/rating_all_user_view_body.dart';

class RatingAllUserView extends StatelessWidget {
  const RatingAllUserView({super.key});
static const String routeName = 'rating-all-user';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ratings & Reviews", style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
        
      ),
      
      body:RatingAllUserViewBody() ,
    );
  }
}