import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';

class BookingSummaryCard extends StatelessWidget {
  final String hotelName;
  final String location;
  final String imageUrl;
  final String rating;
  final String price;
  final String unit;
  final bool compact;

  const BookingSummaryCard({
    super.key,
    required this.hotelName,
    required this.location,
    required this.imageUrl,
    this.rating = '5.0',
    this.price = '\$200',
    this.unit = '/ night',
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardColor, // Dark card background
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl, // Use asset or network based on implementation. Using network for placeholder logic.
              width: compact ? 60 : 80,
              height: compact ? 60 : 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: compact ? 60 : 80,
                height: compact ? 60 : 80,
                color: Colors.grey[800],
                child: const Icon(Icons.image, color: Colors.white54),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!compact) ...[
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
                Text(
                  hotelName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (!compact) const SizedBox(height: 4),
                if (compact) ...[
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.wifi, color: Colors.grey, size: 14),
                      const SizedBox(width: 4),
                      const Text('Free Wifi', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      const SizedBox(width: 16),
                      const Icon(Icons.square_foot, color: Colors.grey, size: 14),
                       const SizedBox(width: 4),
                      const Text('32m²', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  )
                ] else ...[
                   Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: Colors.grey, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        location,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
          if (compact)
             Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 const SizedBox(height: 20),
                 RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: price,
                        style: const TextStyle(
                          color: Color(0xFF007BFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: unit,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                             ),
               ],
             ),

        ],
      ),
    );
  }
}
