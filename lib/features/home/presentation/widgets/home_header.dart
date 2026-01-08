import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home_layout',
                (route) => false,
              );
            },
            child: Image.asset(
              'assets/images/travilo.png',
              height: 30, // Adjust height as needed
            ),
          ),
          Row(
            // Added Row for multiple actions
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'search_view');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.search, color: AppColors.white),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.sort, color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
