import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchDataNotifier extends Notifier<List> {
  @override
  List<dynamic> build() {
    return [];
  }

  void onSearchData(String searchQuery, List<dynamic> searchData) {
    if (searchQuery.isNotEmpty) {
      final searchResult = searchData
          .where(
            (searchElement) =>
                searchElement['travelCity'] ||
                searchElement['travelCountry'] ||
                searchElement['flightDestination'] ||
                searchElement['hotelName'] ||
                searchElement['tourName'].toString().toLowerCase().contains(
                  searchQuery.toString().toLowerCase(),
                ),
          )
          .toSet()
          .toList();
      state.addAll(searchResult);
    }
  }
}
