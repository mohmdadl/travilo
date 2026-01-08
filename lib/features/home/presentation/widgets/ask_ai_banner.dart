import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class AskAIBanner extends StatelessWidget {
  const AskAIBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'ai_planner');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(
            0xFF13202C,
          ), // Dark blueish bg - keeping custom for banner distinction or move to AppColors
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primaryBlue.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryBlue.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.transparent,
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.psychology,
                color: Colors.cyan,
                size: 30,
              ), // AI Icon placeholder
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let our smart assistant craft the perfect itinerary for you... just tell us your preferences and handle the rest.",
                    style: AppStyles.bodySmall.copyWith(
                      color: AppColors.white,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
