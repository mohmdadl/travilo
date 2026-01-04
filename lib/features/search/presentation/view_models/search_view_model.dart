import 'package:flutter/material.dart';

class SearchViewModel extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();

  List<String> recentSearches = [
    "Paris, France",
    "Paris, France",
    "Paris, France",
    "Paris, France",
  ];

  final List<Map<String, dynamic>> popularDestinations = [
    {
      "name": "Paris",
      "country": "France",
      "image": "assets/images/tour.jpg", // Using existing asset as placeholder
    },
    {"name": "Paris", "country": "France", "image": "assets/images/tour.jpg"},
    {"name": "Paris", "country": "France", "image": "assets/images/tour.jpg"},
    {"name": "Paris", "country": "France", "image": "assets/images/tour.jpg"},
  ];

  void removeRecentSearch(int index) {
    recentSearches.removeAt(index);
    notifyListeners();
  }

  void onSearch(String query) {
    if (query.isNotEmpty && !recentSearches.contains(query)) {
      recentSearches.insert(0, query);
      if (recentSearches.length > 5) {
        recentSearches.removeLast();
      }
      notifyListeners();
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
