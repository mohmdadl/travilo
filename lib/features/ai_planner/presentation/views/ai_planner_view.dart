import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class AiPlannerView extends StatelessWidget {
  const AiPlannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI Planner", style: AppStyles.heading2),
        backgroundColor: AppColors.background,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.psychology,
              size: 80,
              color: AppColors.primaryBlue,
            ),
            const SizedBox(height: 20),
            Text("Your Smart Travel Assistant", style: AppStyles.heading2),
            const SizedBox(height: 10),
            Text("Coming Soon...", style: AppStyles.bodyMedium),
          ],
        ),
      ),
    );
  }
}
