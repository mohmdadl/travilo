import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travilo/core/widgets/custom_button.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/place_review.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/rating_section.dart';
import 'package:travilo/features/reviews/presentation/views/widgets/write_review_section.dart';

class WriteReviewViewBody extends StatelessWidget {
  const WriteReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Hotel Info
            PlaceReview(),
            const SizedBox(height: 30),
            // Rating Section
            RatingSection(),

            const SizedBox(height: 30),
            // Text Field Section
            WriteReviewSection(),
            const SizedBox(height: 25),
            // Add Photos Section
            Text(
              "Add Photos",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildPhotoBox(
                  icon: Icons.camera_alt_outlined,
                  label: "Add",
                  isAction: true,
                ),
                _buildPhotoBox(
                  imageUrl:
                      "https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=200",
                ),
                _buildPhotoBox(
                  imageUrl:
                      "https://images.unsplash.com/photo-1590490360182-f33db1395c89?w=200",
                ),
                _buildPhotoBox(
                  imageUrl:
                      "https://images.unsplash.com/photo-1566665797739-1674de7a421a?w=200",
                ),
                _buildPhotoBox(
                  imageUrl:
                      "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=200",
                ),
              ],
            ),
            const SizedBox(height: 25),
            Text(
              "What was great?",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildChip("Cleanliness", true),
                _buildChip("Service", true),
                _buildChip("Value", false),
                _buildChip("Amenities", true),
                _buildChip("Quiet", false),
              ],
            ),
            const SizedBox(height: 40),
            // Submit Button
            CustomButton(text: 'Submit Button', onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoBox({
    String? imageUrl,
    IconData? icon,
    String? label,
    bool isAction = false,
  }) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF1E222B),
        borderRadius: BorderRadius.circular(12),
        border: isAction
            ? Border.all(color: Colors.blue.withOpacity(0.5))
            : null,
        image: imageUrl != null
            ? DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
            : null,
      ),
      child: isAction
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.blue),
                const SizedBox(height: 4),
                Text(
                  label ?? "",
                  style: GoogleFonts.inter(color: Colors.blue, fontSize: 12),
                ),
              ],
            )
          : null,
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : const Color(0xFF1E222B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          color: isSelected ? Colors.white : Colors.grey,
          fontSize: 12,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
