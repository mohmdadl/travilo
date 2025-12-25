import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class BuildGuestSelector extends StatelessWidget {
  const BuildGuestSelector({
    super.key,
    required this.label,
    required this.count,
  });
  final String label, count;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.cardColor, // Match background
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white)),
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.cardColor,
                child: const Icon(
                  Icons.remove,
                  size: 14,
                  color: Color(0xFF007BFF),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                count,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.cardColor,
                child: const Icon(
                  Icons.add,
                  size: 14,
                  color: Color(0xFF007BFF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
