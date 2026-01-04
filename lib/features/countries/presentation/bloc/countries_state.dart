import 'package:equatable/equatable.dart';
import 'country_model_temp.dart';

class CountriesState extends Equatable {
  final List<Country> popularCountries;
  final List<Country> allCountries;
  final List<Country> filteredCountries;
  final bool isSearching;

  const CountriesState({
    this.popularCountries = const [],
    this.allCountries = const [],
    this.filteredCountries = const [],
    this.isSearching = false,
  });

  CountriesState copyWith({
    List<Country>? popularCountries,
    List<Country>? allCountries,
    List<Country>? filteredCountries,
    bool? isSearching,
  }) {
    return CountriesState(
      popularCountries: popularCountries ?? this.popularCountries,
      allCountries: allCountries ?? this.allCountries,
      filteredCountries: filteredCountries ?? this.filteredCountries,
      isSearching: isSearching ?? this.isSearching,
    );
  }

  @override
  List<Object> get props => [
    popularCountries,
    allCountries,
    filteredCountries,
    isSearching,
  ];
}
