import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_data.freezed.dart';

part 'travel_data.g.dart';

@freezed
abstract class TravelData with _$TravelData {
  const factory TravelData({
    required int travelId,
    required String travelCity,
    required String travelCountry,
    required DateTime travelStartDate,
    required DateTime travelEndDate,
    required String? travelImageUrl,
    required bool travelDataHasImage,
    required double travelTotalCost,
    required bool travelBookingIncludesFlight,
    required bool travelBookingIncludesHotel,
    required bool travelBookingIncludesTour,
  }) = _TravelData;

  factory TravelData.fromJson(Map<String, Object?> json) =>
      _$TravelDataFromJson(json);
}
