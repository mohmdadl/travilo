import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';
import 'package:travilo/features/trips/presentation/views/widgets/category_card.dart';
import 'package:travilo/features/trips/presentation/views/widgets/popular_tour_card.dart';
import 'package:travilo/features/trips/presentation/views/widgets/special_offer_card.dart';
import 'package:travilo/features/trips/presentation/views/widgets/trips_header.dart';
import 'package:travilo/features/trips/presentation/views/widgets/trips_search_bar.dart';

class TripsView extends StatelessWidget {
  static const String routeName = 'trips_view';
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              const TripsHeader(),
              const SizedBox(height: 24),

              // SEARCH BAR
              const TripsSearchBar(),
              const SizedBox(height: 24),

              // CATEGORIES GRID
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: const [
                  CategoryCard(
                    icon: Icons.hotel_outlined,
                    title: 'Hotels',
                    subtitle: 'Find a stay',
                  ),
                  CategoryCard(
                    icon: Icons.account_balance_outlined,
                    title: 'Monuments',
                    subtitle: 'Discover sites',
                  ),
                  CategoryCard(
                    icon: Icons.event_outlined,
                    title: 'Events',
                    subtitle: "What's on",
                  ),
                  CategoryCard(
                    icon: Icons.tour_outlined,
                    title: 'Tours',
                    subtitle: 'Book an experience',
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // SPECIAL OFFERS
              Text(
                'Special Offers',
                style: AppStyles.textStyleBold22.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: screenHeight * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const SpecialOfferCard(
                      imagePath: 'assets/images/tour.jpg', // Placeholder
                      title: 'Parisian River Cruise',
                      description: 'Unforgettable views of Paris',
                    );
                  },
                ),
              ),
              const SizedBox(height: 32),

              // POPULAR TOURS
              Text(
                'Popular Tours',
                style: AppStyles.textStyleBold22.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const PopularTourCard(
                    imagePath: 'assets/images/popular.png',
                    title: 'Swiss Alps Adventure',
                    location: 'Interlaken, Switzerland',
                    rating: 4.9,
                    reviews: 876,
                  );
                },
              ),

              const SizedBox(height: 80), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
