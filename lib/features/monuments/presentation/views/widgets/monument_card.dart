import 'package:flutter/material.dart';

class MonumentCard extends StatelessWidget {
  final String title;
  final String toursCount;
  final String imagePath;
  final VoidCallback onTap;

  const MonumentCard({
    super.key,
    required this.title,
    required this.toursCount,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8), // Padding inside the card
      decoration: BoxDecoration(
        color: const Color(0xFF191B20), // Dark background for the card
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Left Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // Middle Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  toursCount,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),

          // Right Arrow
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
