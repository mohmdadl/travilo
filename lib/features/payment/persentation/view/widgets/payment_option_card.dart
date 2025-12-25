import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class PaymentOptionCard extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const PaymentOptionCard({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF007BFF) : AppColors.cardColor,
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
