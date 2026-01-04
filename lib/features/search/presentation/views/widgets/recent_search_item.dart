import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class RecentSearchItem extends StatelessWidget {
  final String text;
  final VoidCallback onRemove;

  const RecentSearchItem({
    super.key,
    required this.text,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF23303D),
            ),
            child: const Icon(Icons.history, color: AppColors.grey, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: AppStyles.bodyMedium.copyWith(color: AppColors.white),
            ),
          ),
          GestureDetector(
            onTap: onRemove,
            child: const Icon(Icons.close, color: AppColors.grey, size: 20),
          ),
        ],
      ),
    );
  }
}
