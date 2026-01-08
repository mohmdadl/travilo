import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class SearchInputField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;

  const SearchInputField({
    super.key,
    required this.controller,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF23303D), // Slightly lighter than background
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        style: AppStyles.bodyMedium.copyWith(color: AppColors.white),
        decoration: InputDecoration(
          hintText: "Search Destinations, hotels...",
          hintStyle: AppStyles.bodySmall.copyWith(color: AppColors.grey),
          prefixIcon: const Icon(Icons.search, color: AppColors.grey),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
