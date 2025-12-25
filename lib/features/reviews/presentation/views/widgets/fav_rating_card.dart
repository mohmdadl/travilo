
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavRatingCard extends StatelessWidget {
  const FavRatingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff192633),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/100?img=9',
                ), // Placeholder
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sarah Jenkins",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Oct 12, 2025",
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 12),
              const Icon(Icons.star, color: Colors.amber, size: 12),
              const Icon(Icons.star, color: Colors.amber, size: 12),
              const Icon(Icons.star, color: Colors.amber, size: 12),
              const Icon(Icons.star, color: Colors.amber, size: 12),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            "Dolorem perspiciatis sunt quis accusantium ea. Unde eligendi optio.",
            style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.thumb_up_alt_outlined,
                size: 14,
                color: Colors.grey,
              ),
              const SizedBox(width: 4),
              Text(
                "54",
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.thumb_down_alt_outlined,
                size: 14,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}