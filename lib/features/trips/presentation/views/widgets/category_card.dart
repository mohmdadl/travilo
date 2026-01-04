import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // Using LayoutBuilder to ensure content fits within the GridTile
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(
            constraints.maxWidth * 0.08,
          ), // Dynamic padding
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color(0xFF137FEC),
                size: constraints.maxWidth * 0.18, // Dynamic icon size
              ),
              SizedBox(height: constraints.maxHeight * 0.1),
              Flexible(
                child: Text(
                  title,
                  style: AppStyles.textStyleBold18.copyWith(
                    color: AppColors.white,
                    fontSize: constraints.maxWidth * 0.1, // Dynamic font size
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              Flexible(
                child: Text(
                  subtitle,
                  style: AppStyles.textStyleExtraLight14.copyWith(
                    color: AppColors.lightGray,
                    fontSize: constraints.maxWidth * 0.08, // Dynamic font size
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
