import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.white.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Icon(CupertinoIcons.search, color: AppColors.accentBlue, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              "Search destinations, hotels...",
              style: AppStyles.bodyMedium.copyWith(fontSize: 14),
            ),
          ),
          Icon(Icons.mic_none, color: AppColors.white54, size: 22),
        ],
      ),
    );
  }
}
