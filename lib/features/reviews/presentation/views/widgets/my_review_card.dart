import 'package:flutter/material.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/hieghst_rated_card.dart';

class MyReviewsCard extends StatelessWidget {
  const MyReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Highest Rated',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),

        ReviewCardUI(
          userName: 'Sarah Jenkins',
          date: 'Oct 12, 2025',
          rating: 4.0,
          comment:
              'Quaerat cumque corrupti et et doloremque aliquid ut illo ut. Eaque qui commodi.',
          imageUrls: [
            'https://picsum.photos/200/300',
            'https://picsum.photos/201/300',
          ],
          text: 'Absolutely loved the pool area!',
        ),

        // كارت من غير صور (الصور هتختفي لوحدها)
        ReviewCardUI(
          userName: 'Michael Scott',
          date: 'Nov 05, 2025',
          rating: 5.0,
          comment:
              'Best hotel ever! Everything was perfect from the service to the room quality.',
          imageUrls: [],
          text: 'Absolutely loved the pool area!', // قائمة فاضية
        ),
      ],
    );
  }
}
