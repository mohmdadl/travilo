import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/core/utils/styles.dart';

class TripsSearchBar extends StatelessWidget {
  const TripsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: AppColors.lightGray, size: 24),
          const SizedBox(width: 12),
          Text(
            'Search destination, hotel, or tour...',
            style: AppStyles.textStyleMedium16.copyWith(
              color: AppColors.lightGray,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
