import 'package:flutter_bloc/flutter_bloc.dart';
import 'country_model_temp.dart';
import 'countries_event.dart';
import 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(const CountriesState()) {
    on<FetchCountries>(_onFetchCountries);
    on<SearchCountries>(_onSearchCountries);
  }

  void _onFetchCountries(FetchCountries event, Emitter<CountriesState> emit) {
    // Mock Data
    final popular = [
      const Country(
        name: "Italy",
        continent: "Europe",
        imagePath: "assets/images/tour.jpg",
        flagPath: "🇮🇹",
      ),
      const Country(
        name: "Italy",
        continent: "Europe",
        imagePath: "assets/images/tour.jpg",
        flagPath: "🇮🇹",
      ),
      const Country(
        name: "Italy",
        continent: "Europe",
        imagePath: "assets/images/tour.jpg",
        flagPath: "🇮🇹",
      ),
      const Country(
        name: "Italy",
        continent: "Europe",
        imagePath: "assets/images/tour.jpg",
        flagPath: "🇮🇹",
      ),
    ];

    final all = [
      const Country(
        name: "United States of America",
        continent: "North America",
        imagePath: "",
        flagPath: "assets/icons/language.png",
      ), // Using language icon as temp flag if needed, or emoji
      const Country(
        name: "United States of America",
        continent: "North America",
        imagePath: "",
        flagPath: "assets/icons/language.png",
      ),
      const Country(
        name: "United States of America",
        continent: "North America",
        imagePath: "",
        flagPath: "assets/icons/language.png",
      ),

      const Country(
        name: "Bahrain",
        continent: "Asia",
        imagePath: "",
        flagPath: "assets/icons/language.png",
      ),
      const Country(
        name: "Brazil",
        continent: "South America",
        imagePath: "",
        flagPath: "assets/icons/language.png",
      ),
    ];

    // Ensure sorted for typical alphabetical list logic later in UI
    all.sort((a, b) => a.name.compareTo(b.name));

    emit(
      state.copyWith(
        popularCountries: popular,
        allCountries: all,
        filteredCountries: all, // Initially all are shown
        isSearching: false,
      ),
    );
  }

  void _onSearchCountries(SearchCountries event, Emitter<CountriesState> emit) {
    final query = event.query.toLowerCase();
    if (query.isEmpty) {
      emit(
        state.copyWith(
          filteredCountries: state.allCountries,
          isSearching: false,
        ),
      );
    } else {
      final filtered = state.allCountries.where((country) {
        return country.name.toLowerCase().contains(query);
      }).toList();
      emit(state.copyWith(filteredCountries: filtered, isSearching: true));
    }
  }
}
