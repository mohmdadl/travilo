import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildProgressBar extends StatelessWidget {
  const BuildProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(25),
        width: 350,
        height: 160,
        decoration: BoxDecoration(
          color: Color(0xff192633),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "4.8",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star_half, color: Colors.amber, size: 16),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "1,211 reviews",
                  style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                children: [
                  _buildProgressBar(5, 0.8),
                  SizedBox(height: 3),
                  _buildProgressBar(4, 0.6),
                  SizedBox(height: 3),
                  _buildProgressBar(3, 0.3),
                  SizedBox(height: 3),
                  _buildProgressBar(2, 0.1),
                  SizedBox(height: 3),
                  _buildProgressBar(1, 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProgressBar(int star, double value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      children: [
        Text(
          star.toString(),
          style: GoogleFonts.inter(color: Colors.grey, fontSize: 10),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.white10,
            color: Colors.blue,
            minHeight: 9,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    ),
  );
}
