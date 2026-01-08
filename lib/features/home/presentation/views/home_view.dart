import 'package:flutter/material.dart';
import 'package:travilo/features/home/presentation/widgets/ask_ai_banner.dart';

import 'package:travilo/features/home/presentation/widgets/bookings_section.dart';
import 'package:travilo/features/home/presentation/widgets/category_chips.dart';
import 'package:travilo/features/home/presentation/widgets/hero_section.dart';
import 'package:travilo/features/home/presentation/widgets/home_header.dart';
import 'package:travilo/features/home/presentation/widgets/horizontal_list.dart';
import 'package:travilo/features/home/presentation/widgets/item_card.dart';
import 'package:travilo/features/home/presentation/widgets/section_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),

            const SizedBox(height: 10),
            const CategoryChips(),
            const SizedBox(height: 20),
            const HeroSection(),

            // Hotels Section
            SectionTitle(title: "Hotels", onSeeMore: () {}),
            HorizontalList(
              height: 320, // Adjusted height for cards
              itemCount: 3,
              itemBuilder: (context, index) {
                return ItemCard(
                  title: "Grand Hyatt Hotel",
                  location: "France, Paris",
                  price: "350\$",
                  rating: "4.5",
                  image: "assets/images/bed.png",
                  onTap: () {},
                );
              },
            ),

            const SizedBox(height: 10),

            // Events Section (Example)
            SectionTitle(title: "Events", onSeeMore: () {}),
            HorizontalList(
              height: 320,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ItemCard(
                  title: "Grand Hyatt Hotel", // Placeholder data
                  location: "France, Paris",
                  price: "350\$",
                  rating: "4.5",
                  image: "assets/images/tour.jpg",
                  onTap: () {},
                );
              },
            ),

            const SizedBox(height: 10),

            const SectionTitle(title: "Ask AI"),
            const AskAIBanner(),

            const SectionTitle(title: "My Bookings"),
            const BookingsSection(),

            const SizedBox(height: 100), // Bottom padding for navbar
          ],
        ),
      ),
    );
  }
}
