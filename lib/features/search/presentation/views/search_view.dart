import 'package:flutter/material.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';
import 'package:travilo/features/search/presentation/view_models/search_view_model.dart';
import 'package:travilo/features/search/presentation/views/widgets/popular_destination_card.dart';
import 'package:travilo/features/search/presentation/views/widgets/recent_search_item.dart';
import 'package:travilo/features/search/presentation/views/widgets/search_input_field.dart';
import 'package:travilo/features/countries/presentation/view/countries_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late SearchViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = SearchViewModel();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        iconTheme: const IconThemeData(color: AppColors.white),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Smart Search",
          style: AppStyles.textStyleSemiBold18.copyWith(color: AppColors.white),
        ),
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SearchInputField(
                  controller: viewModel.searchController,
                  onSubmitted: viewModel.onSearch,
                ),
                const SizedBox(height: 30),

                // Recent Searches
                if (viewModel.recentSearches.isNotEmpty) ...[
                  Text(
                    "Recent Searches",
                    style: AppStyles.textStyleSemiBold18.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...viewModel.recentSearches.asMap().entries.map(
                    (entry) => RecentSearchItem(
                      text: entry.value,
                      onRemove: () => viewModel.removeRecentSearch(entry.key),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],

                // Popular Destinations
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destinations",
                      style: AppStyles.textStyleSemiBold18.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    GestureDetector(
                      // Or TextButton as requested, but keeping consistent style
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CountriesView(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: AppStyles.bodyMedium.copyWith(
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.8,
                        ),
                    itemCount: viewModel.popularDestinations.length,
                    itemBuilder: (context, index) {
                      final dest = viewModel.popularDestinations[index];
                      return PopularDestinationCard(
                        name: dest['name'],
                        country: dest['country'],
                        imagePath: dest['image'],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
