import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/card_item.dart';
import 'package:travilo/features/hotels/presentation/views/widgets/filter_row.dart';
import 'package:travilo/core/widgets/custom_search_bar.dart';

class HotelsViewBody extends StatelessWidget {
  const HotelsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const CustomSearchBar(hintText: "Search for an activity..."),
        const SizedBox(height: 10),
        const FilterRow(),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              // Creating some dummy variations for dynamic badge demonstration
              final isEven = index % 2 == 0;
              return CardItem(
                title: "Eiffel Tower Summit Tour",
                location: "Paris, France • Sightseeing",
                rating: 4.5,
                reviewsCount: 1234,
                price: 99.0,
                imagePath:
                    "assets/images/bed.png", // Using bed asset as placeholder
                offer: isEven ? "Best Seller" : "20% Off",
                badgeColor: isEven ? Colors.amber : Colors.green,
                badgeTextColor: isEven ? Colors.black : Colors.white,
                onViewDetailsPressed: () {
                  // Navigate
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
