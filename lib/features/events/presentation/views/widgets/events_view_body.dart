import 'package:flutter/material.dart';
import 'package:travilo/features/events/presentation/views/widgets/event_card.dart';
import '../../../../../core/widgets/custom_search_bar_v2.dart'; // Using the one I created or generic

class EventsViewBody extends StatelessWidget {
  const EventsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const CustomSearchBar(hintText: "Search for an activity..."),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return EventCard(
                  title: "Global Music",
                  description:
                      "Voluptatem quo voluptate consequatur possimus dolorem ea voluptas et.",
                  location: "Rome, Italy",
                  category: "Historical Tour",
                  date: "Dec 16",
                  imagePath: "assets/images/tour.jpg", // Using existing asset
                  onViewDetailsPressed: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
