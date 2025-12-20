import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/fav_review_view_body.dart';

class FavouriteReviewsView extends StatelessWidget {
  const FavouriteReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guest Favorites", style: GoogleFonts.inter(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
        
      ),
      body:FavouriteReviewsViewBody() ,
    );
  }
}