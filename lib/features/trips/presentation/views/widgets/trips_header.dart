import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class TripsHeader extends StatelessWidget {
  const TripsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Alex?',
              style: AppStyles.textStyleBold18.copyWith(
                color: AppColors.white,
                fontSize: screenWidth * 0.045, // Responsive size
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Where to next?',
              style: AppStyles.textStyleBold24.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w900,
                fontSize: screenWidth * 0.065, // Responsive size
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: screenWidth * 0.06, // Responsive radius
          backgroundImage: const AssetImage('assets/images/tour.jpg'),
        ),
      ],
    );
  }
}
