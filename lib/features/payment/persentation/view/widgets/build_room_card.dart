import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class BuildRoomCard extends StatelessWidget {
  const BuildRoomCard({super.key, required this.isSelected});
    final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(16),
        border: isSelected
            ? Border.all(color: const Color(0xFF007BFF), width: 2)
            : Border.all(color: Colors.transparent),
        color: AppColors.cardColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              50,
            ), 
            child: Image.network(
              'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Standard king',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.wifi, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    const Text(
                      'Free Wifi',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.square_foot, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    const Text(
                      '32m²',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  '\$200 / night',
                  style: TextStyle(color: Color(0xFF007BFF), fontSize: 12),
                ),
              ],
            ),
          ),
          if (isSelected)
            const Icon(Icons.radio_button_checked, color: Color(0xFF007BFF))
          else
            const Icon(Icons.radio_button_off, color: Colors.grey),
        ],
      ),
    );
  }
}