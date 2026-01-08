import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_styles.dart';
import 'package:travilo/features/countries/presentation/bloc/countries_bloc.dart';
import 'package:travilo/features/countries/presentation/bloc/countries_event.dart';
import 'package:travilo/features/countries/presentation/bloc/countries_state.dart';
import 'package:travilo/features/countries/presentation/widgets/country_list_tile.dart';
import 'package:travilo/features/countries/presentation/widgets/country_popular_card.dart';

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountriesBloc()..add(FetchCountries()),
      child: const _CountriesViewBody(),
    );
  }
}

class _CountriesViewBody extends StatelessWidget {
  const _CountriesViewBody();

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
          "Select Destination",
          style: AppStyles.textStyleSemiBold18.copyWith(color: AppColors.white),
        ),
      ),
      body: BlocBuilder<CountriesBloc, CountriesState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF23303D), // Slightly lighter
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search countries...",
                        hintStyle: TextStyle(color: AppColors.grey),
                        icon: Icon(Icons.search, color: AppColors.grey),
                      ),
                      onChanged: (value) {
                        context.read<CountriesBloc>().add(
                          SearchCountries(value),
                        );
                      },
                    ),
                  ),
                ),

                if (!state.isSearching) ...[
                  // Popular Destinations
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      "Popular Destinations",
                      style: AppStyles.textStyleSemiBold18.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.popularCountries.length,
                      itemBuilder: (context, index) {
                        final country = state.popularCountries[index];
                        return CountryPopularCard(
                          name: country.name,
                          continent: country.continent,
                          imagePath: country.imagePath,
                          flagEmoji:
                              country.flagPath, // Assuming simplified for now
                        );
                      },
                    ),
                  ),
                ],

                // Alphabetical List (Grouped)
                if (state.filteredCountries.isNotEmpty)
                  ..._buildGroupedCountries(state.filteredCountries),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildGroupedCountries(List<dynamic> countries) {
    // Group logic
    Map<String, List<dynamic>> grouped = {};
    for (var c in countries) {
      String firstLetter = c.name[0].toUpperCase();
      if (!grouped.containsKey(firstLetter)) {
        grouped[firstLetter] = [];
      }
      grouped[firstLetter]!.add(c);
    }

    List<Widget> widgets = [];
    grouped.forEach((letter, list) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            letter,
            style: AppStyles.textStyleBold18.copyWith(
              color: AppColors.primaryBlue,
            ),
          ),
        ),
      );
      for (var country in list) {
        widgets.add(
          CountryListTile(name: country.name, flagPath: country.flagPath),
        );
      }
    });

    return widgets;
  }
}
