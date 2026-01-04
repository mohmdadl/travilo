import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class PopularDestinationCard extends StatelessWidget {
  final String name;
  final String country;
  final String imagePath;

  const PopularDestinationCard({
    super.key,
    required this.name,
    required this.country,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: AppStyles.textStyleSemiBold18.copyWith(color: AppColors.white),
        ),
        Text(
          country,
          style: AppStyles.bodySmall.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
