import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/fav_rating_card.dart';
class FavouriteReviewsViewBody extends StatelessWidget {
  const FavouriteReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Text(
          "5.0",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),

        
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
          ],
        ),

       
        Text(
          "Based on 1,103-star reviews",
          style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
        ),

        const SizedBox(height: 16),

        
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: FavRatingCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}


