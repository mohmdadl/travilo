import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/core/utils/styles.dart';
import 'package:travilo/features/home/presentation/views/widgets/destination_card.dart';
import 'package:travilo/features/home/presentation/views/widgets/dish_card.dart';
import 'package:travilo/features/home/presentation/views/widgets/hotel_card.dart';
import 'package:travilo/features/home/presentation/views/widgets/section_header.dart';
import 'package:travilo/features/home/presentation/views/widgets/weather_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensuring status bar color matches theme
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent, // Uses theme background from main
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'LOGO',
          style: AppStyles.textStyleBold24.copyWith(
            color: AppColors.white,
            letterSpacing: 1.5,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              color: AppColors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HERO SECTION
            _buildHeroSection(context),

            const SizedBox(height: 24),

            // THE PYRAMIDS TEXT SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Pyramids',
                        style: AppStyles.textStyleBold22.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Q & A',
                          style: AppStyles.textStyleExtraLight14.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text('🇪🇬', style: TextStyle(fontSize: 16)),
                      const SizedBox(width: 8),
                      Text(
                        'Egypt',
                        style: AppStyles.textStyleMedium16.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'REVIEW',
                        style: AppStyles.textStyleExtraLight14.copyWith(
                          color: AppColors.lightGray,
                          fontSize: 10,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Explore iconic landmarks, savor authentic cuisine, and enjoy unforgettable experiences.',
                    style: AppStyles.textStyleExtraLight16.copyWith(
                      color: AppColors.lightGray,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Read More',
                    style: AppStyles.textStyleMedium16.copyWith(
                      color: AppColors.lightGray,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // UPCOMING TOURS
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Upcoming Tours',
                style: AppStyles.textStyleBold18.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return DestinationCard(
                  imagePath: 'assets/images/pyramids.png',
                  location: 'Giza, Egypt',
                  title: 'Giza pyramids',
                  description:
                      'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                  onExplore: () {},
                  onAddToList: () {},
                );
              },
            ),

            const SizedBox(height: 24),

            // SPECIAL HOTELS
            SectionHeader(title: 'Special Hotels', onSeeMore: () {}),
            SizedBox(
              height: screenHeight * 0.35, // Responsive height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return HotelCard(
                    imagePath: 'assets/images/bed.png', // Using available asset
                    name: 'Four Seasons Hotel',
                    location: 'Cairo, Egypt',
                    price: '\$200',
                    rating: 4.8,
                    onBookmark: () {},
                    onLike: () {},
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            // FAMOUS DISHES
            SectionHeader(title: 'Famous dishes', onSeeMore: () {}),
            SizedBox(
              height: screenHeight * 0.25, // Responsive height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return DishCard(
                    imagePath: 'assets/images/koshary.png',
                    name: 'Koshary',
                    price: '\$10',
                    rating: 4.5,
                    onFavorite: () {},
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            // EXPECTED WEATHER
            SectionHeader(title: 'Expected Weather', onSeeMore: () {}),
            SizedBox(
              height: screenHeight * 0.22, // Responsive height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return WeatherCard(
                    location: index == 0 ? 'Egypt, Cairo' : 'Egypt, Giza',
                    date: 'Mon 18/10',
                    minTemp: 16,
                    maxTemp: 23,
                    weatherIcon: Icons.wb_sunny_rounded,
                    backgroundGradient: index == 0
                        ? [const Color(0xFF1A4753), const Color(0xFF2C6E7A)]
                        : [const Color(0xFF1A4753), const Color(0xFF2C6E7A)],
                  );
                },
              ),
            ),
            const SizedBox(height: 100), // Bottom padding for navigation bar
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25, // Responsive height
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/pyramids.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.6),
            ],
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Discover Egypt - Where History Meets Magic',
              textAlign: TextAlign.center,
              style: AppStyles.textStyleBold22.copyWith(
                color: AppColors.white,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'trips_view');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                foregroundColor: AppColors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Book Now'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
