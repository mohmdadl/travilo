import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class CountryListTile extends StatelessWidget {
  final String name;
  final String
  flagPath; // Can be asset path or use emoji text for simplicity if needed

  const CountryListTile({
    super.key,
    required this.name,
    required this.flagPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF23303D), // Slightly lighter than background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Flag circle
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(0.3), // Fallback bg
              image: flagPath.contains("assets")
                  ? DecorationImage(
                      image: AssetImage(flagPath),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: !flagPath.contains("assets")
                ? const Center(child: Icon(Icons.flag, color: Colors.white))
                : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              name,
              style: AppStyles.bodyLarge.copyWith(color: AppColors.white),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: AppColors.grey, size: 16),
        ],
      ),
    );
  }
}
