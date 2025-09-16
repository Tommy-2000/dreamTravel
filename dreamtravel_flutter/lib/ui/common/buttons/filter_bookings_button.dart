import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the types of bookings
enum BookingType { flights, hotels, rentals }

class BookingTypeNotifier extends Notifier<BookingType> {
  @override
  BookingType build() {
    return BookingType.flights; // Set the default state to flights
  }

  setBookingType(BookingType travelType) {
    state = travelType;
  }
}

class FilterBookingsButton extends ConsumerStatefulWidget {
  const FilterBookingsButton({super.key});

  @override
  ConsumerState<FilterBookingsButton> createState() =>
      _FilterSegmentedButtonState();
}

class _FilterSegmentedButtonState extends ConsumerState<FilterBookingsButton> {
  BookingType defaultTravelSelection = BookingType.flights;

  final travelTypeNotifierProvider =
      NotifierProvider<BookingTypeNotifier, BookingType>(
        BookingTypeNotifier.new,
      );

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      style: ButtonStyle(),
      segments: const <ButtonSegment<BookingType>>[
        ButtonSegment(value: BookingType.flights, label: Text("Flights")),
        ButtonSegment(value: BookingType.hotels, label: Text("Hotels")),
        ButtonSegment(value: BookingType.rentals, label: Text("Rentals")),
      ],
      selected: {ref.watch(travelTypeNotifierProvider)},
      onSelectionChanged: (Set<BookingType> newTravelSelection) {
        ref
            .read(travelTypeNotifierProvider.notifier)
            .setBookingType(newTravelSelection.first);

      },
    );
  }
}
