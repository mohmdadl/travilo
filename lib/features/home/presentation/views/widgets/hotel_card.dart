import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/core/utils/styles.dart';

class HotelCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final String price;
  final double rating;
  final VoidCallback? onBookmark;
  final VoidCallback? onLike;

  const HotelCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.price,
    required this.rating,
    this.onBookmark,
    this.onLike,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.6,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hotel Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: screenHeight * 0.18, // dynamic height
                  fit: BoxFit.cover,
                ),
              ),
              // Action Icons
              Positioned(
                top: 8,
                right: 8,
                child: Row(
                  children: [
                    _iconButton(Icons.bookmark_border, onBookmark),
                    const SizedBox(width: 8),
                    _iconButton(Icons.favorite_border, onLike),
                  ],
                ),
              ),
            ],
          ),
          // Hotel Info
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppStyles.textStyleBold18.copyWith(
                    color: AppColors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColors.lightGray,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: AppStyles.textStyleExtraLight14.copyWith(
                        color: AppColors.lightGray,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: AppStyles.textStyleBold18.copyWith(
                        color: AppColors.primaryGreen,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.accentYellow,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: AppStyles.textStyleMedium16.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: AppColors.white, size: 18),
      ),
    );
  }
}
