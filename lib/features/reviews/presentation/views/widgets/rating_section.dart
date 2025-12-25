import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return             Center(
              child: Column(
                children: [
                  Text(
                    "How was your stay?",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Tap to rate your experience",
                    style: GoogleFonts.inter(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: index < 4 ? Colors.amber : Colors.grey.withOpacity(0.3),
                        size: 32,
                      );
                    }),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Good",
                    style: GoogleFonts.inter(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
  }
}