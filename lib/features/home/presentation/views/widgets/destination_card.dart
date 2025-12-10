import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/core/utils/styles.dart';

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String location;
  final String title;
  final String description;
  final VoidCallback? onExplore;
  final VoidCallback? onAddToList;

  const DestinationCard({
    super.key,
    required this.imagePath,
    required this.location,
    required this.title,
    required this.description,
    this.onExplore,
    this.onAddToList,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: screenHeight * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            // Location
            Row(
              children: [
                const Icon(Icons.location_on, color: AppColors.white, size: 16),
                const SizedBox(width: 4),
                Text(
                  location,
                  style: AppStyles.textStyleExtraLight14.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Title
            Text(
              title,
              style: AppStyles.textStyleBold18.copyWith(color: AppColors.white),
            ),
            const SizedBox(height: 8),
            // Description
            Text(
              description,
              style: AppStyles.textStyleExtraLight14.copyWith(
                color: AppColors.lightGray,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onExplore,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text('Explore'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: onAddToList,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.white,
                      side: const BorderSide(color: AppColors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    icon: const Icon(Icons.favorite_border, size: 18),
                    label: const Text('Add to list'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
