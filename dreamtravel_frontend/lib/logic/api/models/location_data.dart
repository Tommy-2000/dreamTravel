class LocationData {
  final String locationCity;
  final String locationCountry;
  final String locationStartDate;
  final String locationEndDate;
  final String locationImageUrl;
  final double locationTotalCost;
  final bool tripIncludesHotel;
  final bool tripIncludesRental;
  final bool tripIncludesTour;


  const LocationData({
    required this.locationCity,
    required this.locationCountry,
    required this.locationStartDate,
    required this.locationEndDate,
    required this.locationImageUrl,
    required this.locationTotalCost,
    required this.tripIncludesHotel,
    required this.tripIncludesRental,
    required this.tripIncludesTour
  });
}
