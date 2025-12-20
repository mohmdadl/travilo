import 'package:flutter/material.dart';
import 'package:travilo/features/expolre/presentation/views/widgets/explore_card.dart';
import 'package:travilo/features/expolre/presentation/views/widgets/explore_header.dart';
import 'package:travilo/features/expolre/presentation/views/widgets/see_more.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});
static const String routeName = 'explore-view';
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExploreHeader(),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Text(
                  'What are you\nPlanning',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              const SearchBar(hintText: 'Search hotel, or events',),

              const SizedBox(height: 1),

              const SeeMore(),
              const SizedBox(height: 5),

              const ExploreCard(
                assetImage: "assets/images/hotel.jpg",
                title: "Hotel",
                supTitle: "Find and book your perfect stay.",
              ),
              const SizedBox(height: 12),

              const ExploreCard(
              assetImage: "assets/images/hotel.jpg",
                title: "Hotel",
                supTitle: "Find and book your perfect stay.",
              ),

              const SizedBox(height: 12),

              const ExploreCard(
               assetImage: "assets/images/hotel.jpg",
                title: "Hotel",
                supTitle: "Find and book your perfect stay.",
              ),
              const SizedBox(height: 12),

              const ExploreCard(
              assetImage: "assets/images/hotel.jpg",
                title: "Hotel",
                supTitle: "Find and book your perfect stay.",
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      
    
  }
}
