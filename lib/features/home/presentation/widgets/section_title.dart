import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeMore;

  const SectionTitle({super.key, required this.title, this.onSeeMore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.sectionTitle),
          if (onSeeMore != null)
            GestureDetector(
              onTap: onSeeMore,
              child: Text(
                "See More",
                style: AppStyles.bodySmall.copyWith(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
