import 'package:flutter/material.dart';
import 'package:travilo/features/home/presentation/widgets/ask_ai_banner.dart';

import 'package:travilo/features/home/presentation/widgets/bookings_section.dart';
import 'package:travilo/features/home/presentation/widgets/category_chips.dart';
import 'package:travilo/features/home/presentation/widgets/hero_section.dart';
import 'package:travilo/features/home/presentation/widgets/home_header.dart';
import 'package:travilo/features/home/presentation/widgets/horizontal_list.dart';
import 'package:travilo/features/home/presentation/widgets/item_card.dart';
import 'package:travilo/features/home/presentation/widgets/section_title.dart';
import 'package:travilo/features/hotels/presentation/views/hotels_view.dart';
import 'package:travilo/features/events/presentation/views/events_view.dart';
import 'package:travilo/features/monuments/presentation/views/monuments_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Keys for each section to scroll to
  final GlobalKey _hotelsKey = GlobalKey();
  final GlobalKey _eventsKey = GlobalKey();
  final GlobalKey _monumentsKey = GlobalKey();
  final GlobalKey _askAiKey = GlobalKey();
  final GlobalKey _bookingsKey = GlobalKey();

  void _scrollToSection(int index) {
    GlobalKey? key;
    switch (index) {
      case 0: // Hotels
        key = _hotelsKey;
        break;
      case 1: // Events
        key = _eventsKey;
        break;
      case 2: // Monuments
        key = _monumentsKey;
        break;
      case 3: // Ask AI
        key = _askAiKey;
        break;
      case 4: // My Bookings
        key = _bookingsKey;
        break;
    }

    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        alignment: 0.1, // Aligns somewhat near top (0.0 is top, 1.0 is bottom)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),

            const SizedBox(height: 10),
            CategoryChips(onCategorySelected: _scrollToSection),
            const SizedBox(height: 20),
            const HeroSection(),

            // Hotels Section
            Container(
              key: _hotelsKey, // Assign Key
              child: Column(
                children: [
                  SectionTitle(
                    title: "Hotels",
                    onSeeMore: () {
                      Navigator.pushNamed(context, HotelsView.routeName);
                    },
                  ),
                  HorizontalList(
                    height: 320,
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
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Events Section
            Container(
              key: _eventsKey, // Assign Key
              child: Column(
                children: [
                  SectionTitle(
                    title: "Events",
                    onSeeMore: () {
                      Navigator.pushNamed(context, EventsView.routeName);
                    },
                  ),
                  HorizontalList(
                    height: 320,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ItemCard(
                        title: "Grand Hyatt Hotel", // Placeholder
                        location: "France, Paris",
                        price: "350\$",
                        rating: "4.5",
                        image: "assets/images/tour.jpg",
                        onTap: () {},
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Monuments & Tours Section
            Container(
              key: _monumentsKey, // Assign Key
              child: Column(
                children: [
                  SectionTitle(
                    title: "Monuments & tours",
                    onSeeMore: () {
                      Navigator.pushNamed(context, MonumentsView.routeName);
                    },
                  ),
                  HorizontalList(
                    height: 320,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ItemCard(
                        title: "Eiffel Tower",
                        location: "France, Paris",
                        price: "120\$",
                        rating: "4.8",
                        image: "assets/images/tour.jpg",
                        onTap: () {},
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Container(
              key: _askAiKey, // Assign Key
              child: Column(
                children: [
                  const SectionTitle(title: "Ask AI"),
                  const AskAIBanner(),
                ],
              ),
            ),

            Container(
              key: _bookingsKey, // Assign Key
              child: Column(
                children: [
                  const SectionTitle(title: "My Bookings"),
                  const BookingsSection(),
                ],
              ),
            ),

            const SizedBox(height: 100), // Bottom padding for navbar
          ],
        ),
      ),
    );
  }
}
