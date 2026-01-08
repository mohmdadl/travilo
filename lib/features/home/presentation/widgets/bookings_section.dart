import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';

class BookingsSection extends StatelessWidget {
  const BookingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Booking Item 1
          _bookingItem(
            title: "Hotel Reservation",
            subtitle: "The Grand Hotel, New York",
            image: "assets/images/bed.png",
          ),
          const SizedBox(height: 12),
          // Booking Item 2
          _bookingItem(
            title: "Hotel Reservation",
            subtitle: "The Grand Hotel, New York",
            image: "assets/images/bed.png",
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _bookingItem({
    required String title,
    required String subtitle,
    required String image,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming",
                  style: AppStyles.bodySmall.copyWith(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  title,
                  style: AppStyles.bodyMedium.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(subtitle, style: AppStyles.bodySmall),
                const SizedBox(height: 8),
                SizedBox(
                  height: 30, // Small button
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: Text(
                      "View Details",
                      style: AppStyles.bodySmall.copyWith(
                        color: AppColors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Icon(
                  Icons.favorite_border,
                  color: AppColors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
