// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
//
//
// class TravelSegmentedButton extends ConsumerStatefulWidget {
//   const TravelSegmentedButton({super.key});
//
//   @override
//   ConsumerState<TravelSegmentedButton> createState() =>
//       _FilterTravelSegmentedButtonState();
// }
//
// class _FilterTravelSegmentedButtonState extends ConsumerState<TravelSegmentedButton> {
//   BookingType defaultTravelSelection = BookingType.flights;
//
//   final travelTypeNotifierProvider =
//       NotifierProvider<BookingTypeNotifier, BookingType>(
//         BookingTypeNotifier.new,
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return SegmentedButton(
//       style: ButtonStyle(),
//       segments: const <ButtonSegment<BookingType>>[
//         ButtonSegment(value: BookingType.flights, label: Text("Flights")),
//         ButtonSegment(value: BookingType.hotels, label: Text("Hotels")),
//         ButtonSegment(value: BookingType.experiences, label: Text("Rentals")),
//       ],
//       selected: {ref.watch(travelTypeNotifierProvider)},
//       onSelectionChanged: (Set<BookingType> newTravelSelection) {
//         ref
//             .read(travelTypeNotifierProvider.notifier)
//             .setBookingType(newTravelSelection.first);
//
//       },
//     );
//   }
// }
