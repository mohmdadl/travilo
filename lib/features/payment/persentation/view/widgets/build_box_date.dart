import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class BuildBoxDate extends StatelessWidget {
  const BuildBoxDate( {super.key, required this.date, required this.label});
final String date,label;
  @override
  Widget build(BuildContext context) {
    return 
      
            Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.calendar_today,
                color: Color(0xFF007BFF),
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
   
  }
}