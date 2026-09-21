import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_data.freezed.dart';

part 'travel_data.g.dart';

@freezed
abstract class TravelData with _$TravelData {
  const factory TravelData({
    required String travelId,
    required String travelCity,
    required String travelCountry,
    required double travelLatitude,
    required double travelLongitude,
    required DateTime travelStartDate,
    required DateTime travelEndDate,
    @Default('') String? travelImageUrl,
    required bool travelDataHasImage,
    required double travelTotalCost,
    required bool travelDataIncludesFlight,
    required bool travelDataIncludesHotel,
    required bool travelDataIncludesTour,
  }) = _TravelData;

  factory TravelData.fromJson(Map<String, Object?> json) =>
      _$TravelDataFromJson(json);
}
