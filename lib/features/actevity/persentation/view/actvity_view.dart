import 'package:flutter/material.dart';
import 'package:travilo/core/utils/widgets/card_item.dart';
import 'package:travilo/features/actevity/persentation/view/widgets/actvity_header.dart';

class ActevityView extends StatelessWidget {
  const ActevityView({super.key});
static const String routeName = 'actviety-view';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            ActveityHeader(),

            const SizedBox(height: 20),

            SearchBar(hintText: 'Search for an activity...'),

            const SizedBox(height: 25),

            // Filters
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFilterButton('Category', Icons.category_outlined),
                _buildFilterButton('Price', Icons.arrow_drop_down),
                _buildFilterButton('Rating', Icons.star),
              ],
            ),

            const SizedBox(height: 20),

            // Cards List
            CardItem(
              imagePath: 'assets/images/tour.jpg',
              title: 'Eiffel Tower Summit Tour',
              location: 'Paris, France • Sightseeing',
              rating: 4.5,
              price: 99,
              reviewsCount: 1234,
              offer: 'Best Seller',
              onViewDetailsPressed: () {},
            ),

            const SizedBox(height: 16),

            CardItem(
              imagePath: 'assets/images/tour.jpg',
              title: 'Ancient Rome Colosseum',
              location: 'Rome, Italy • Historical Tour',
              rating: 4.9,
              price: 120,
              reviewsCount: 2871,
              offer: '20% Off',
              onViewDetailsPressed: () {},
            ),

            const SizedBox(height: 16),

            CardItem(
              imagePath: 'assets/images/tour.jpg',
              title: 'Thailand Islands Kayaking',
              location: 'Phuket, Thailand • Adventure',
              rating: 4.2,
              price: 85,
              reviewsCount: 885,
              offer: 'New',
              onViewDetailsPressed: () {},
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2F4A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 15)),
          const SizedBox(width: 4),
          Icon(icon, color: Colors.white, size: 20),
        ],
      ),
    );
  }
}
