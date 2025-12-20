import 'package:flutter/material.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/build_progress_bar.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/my_review_card.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/rating_filter_bar.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/write_review_button.dart';

class RatingAllUserViewBody extends StatelessWidget {
  const RatingAllUserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 20, bottom: 100),
          children: [
            BuildProgressBar(),
            const SizedBox(height: 20),
            RatingFilterBar(),
            const SizedBox(height: 20),
            MyReviewsCard(),
          ],
        ),

        ReviewButton(),
      ],
    );
  }
}

