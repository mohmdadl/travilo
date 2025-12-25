import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteReviewSection extends StatelessWidget {
  const WriteReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
                  "Write your reviews",
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                
                const SizedBox(height: 10),
                Container(
                  
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E222B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        maxLines: 5,
                        style: GoogleFonts.inter(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration.collapsed(
                          hintText: "Share your experience... What did you like or dislike?",
                          hintStyle: GoogleFonts.inter(color: Colors.grey[600], fontSize: 13),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "0/50",
                          style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
      ],
    );
  }
}