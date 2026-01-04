import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class CountryPopularCard extends StatelessWidget {
  final String name;
  final String continent;
  final String imagePath;
  final String flagEmoji;

  const CountryPopularCard({
    super.key,
    required this.name,
    required this.continent,
    required this.imagePath,
    this.flagEmoji = "🇮🇹",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      flagEmoji,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: AppStyles.textStyleSemiBold18.copyWith(
              color: AppColors.white,
            ),
          ),
          Text(
            continent,
            style: AppStyles.bodySmall.copyWith(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
