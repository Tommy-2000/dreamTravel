import 'package:flutter/material.dart';

class TravelData {
  final int travelId;
  final String travelCity;
  final String travelCountry;
  final DateTime travelStartDate;
  final DateTime travelEndDate;
  final String travelImageUrl;
  final double travelTotalCost;
  final bool travelBookingIncludesFlight;
  final bool travelBookingIncludesHotel;
  final bool travelBookingIncludesTour;


  const TravelData({
    required this.travelId,
    required this.travelCity,
    required this.travelCountry,
    required this.travelStartDate,
    required this.travelEndDate,
    required this.travelImageUrl,
    required this.travelTotalCost,
    required this.travelBookingIncludesFlight,
    required this.travelBookingIncludesHotel,
    required this.travelBookingIncludesTour
  });
}
