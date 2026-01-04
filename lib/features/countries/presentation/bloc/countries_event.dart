import 'package:equatable/equatable.dart';

abstract class CountriesEvent extends Equatable {
  const CountriesEvent();

  @override
  List<Object> get props => [];
}

class FetchCountries extends CountriesEvent {}

class SearchCountries extends CountriesEvent {
  final String query;
  const SearchCountries(this.query);

  @override
  List<Object> get props => [query];
}
