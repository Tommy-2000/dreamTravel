// import 'dart:async';
//
// import 'package:dreamtravel/data/hotel_booking_data.dart';
// import 'package:dreamtravel/data/sample_data/sample_booking_data.dart';
// import 'package:dreamtravel/logic/api/api_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../../../constants/api_strings.dart';
// import '../../../data/tour_booking_data.dart';
//
// final tourBookingDataRepository = FutureProvider<TourBookingDataRepository>((
//     ref,
//     ) {
//   return TourBookingDataRepository();
// });
//
// class TourBookingDataRepository {
//   late final ApiProvider apiProvider;
//
//   List<TourBookingData> getAllSampleTourBookingData() {
//     return sampleTourBookingDataList;
//   }
//
//   FutureOr<List<TourBookingData>> getAllTourBookingData(
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: "$springTestApi/tours/",
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByBookingNumber(
//       String bookingNumber,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: "$springTestApi/tours/$bookingNumber",
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByTourName(
//       String tourName,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: "$springTestApi/tours/",
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByCountry(
//       String bookingCountry,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: responseUri.host,
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByStartDate(
//       DateTime bookingStartDate,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: responseUri.host,
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByEndDate(
//       DateTime bookingEndDate,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: responseUri.host,
//     );
//     return futureResponse.data;
//   }
//
//   FutureOr<TourBookingData> getTourBookingDataByTotalCost(
//       double bookingTotalCost,
//       ) async {
//     final futureResponse = await apiProvider.getRequest(
//       apiEndpoint: responseUri.host,
//     );
//     return futureResponse.data;
//   }
// }
