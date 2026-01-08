import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';

class AIFloatingButton extends StatelessWidget {
  const AIFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, 'ai_planner');
      },
      backgroundColor: AppColors.primaryBlue,
      child: const Icon(Icons.psychology, color: AppColors.white, size: 30),
    );
  }
}
