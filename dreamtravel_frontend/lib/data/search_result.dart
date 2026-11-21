import 'package:dreamtravel/data/travel_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';

@freezed
class SearchResult with _$SearchResult {

  const factory SearchResult.loading() = Loading;
  const factory SearchResult.success(TravelData travelData) = Success;
  const factory SearchResult.error(String error) = Error;

}
