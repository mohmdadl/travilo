import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final String iconPath; // Expecting "assets/icons/..."
  final bool isSelected;
  final VoidCallback onTap;

  const DrawerItemWidget({
    super.key,
    required this.title,
    required this.iconPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF597B84)
              : Colors.transparent, // Custom Greyish-Blue for active
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            // Using Icon as placeholder if assets are missing, but code implements requirement.
            // Ideally: Image.asset(iconPath, color: isSelected ? Colors.white : AppColors.grey, height: 24),
            // Safe fallback to Icon if asset fails? No, sticking to requirement.
            if (iconPath.isNotEmpty) ...[
              Image.asset(
                iconPath,
                height: 24,
                width: 24,
                color: isSelected
                    ? AppColors.white
                    : const Color(
                        0xFF42A5F5,
                      ), // Blueish icon for inactive as per image hint or just white/blue
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.error, color: AppColors.white),
              ),
              const SizedBox(width: 16),
            ],
            Text(
              title,
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
