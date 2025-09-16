import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the types of travel
enum TravelType { flights, hotels, rentals }

class TravelTypeNotifier extends Notifier<TravelType> {
  @override
  TravelType build() {
    return TravelType.flights; // Set the default state to flights
  }

  setTravelType(TravelType travelType) {
    state = travelType;
  }
}

class FilterTravelButton extends ConsumerStatefulWidget {
  const FilterTravelButton({super.key});

  @override
  ConsumerState<FilterTravelButton> createState() =>
      _FilterSegmentedButtonState();
}

class _FilterSegmentedButtonState extends ConsumerState<FilterTravelButton> {
  TravelType defaultTravelSelection = TravelType.flights;

  final travelTypeNotifierProvider =
      NotifierProvider<TravelTypeNotifier, TravelType>(
        TravelTypeNotifier.new,
      );

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const <ButtonSegment<TravelType>>[
        ButtonSegment(value: TravelType.flights, label: Text("Flights")),
        ButtonSegment(value: TravelType.hotels, label: Text("Hotels")),
        ButtonSegment(value: TravelType.rentals, label: Text("Rentals")),
      ],
      selected: {ref.watch(travelTypeNotifierProvider)},
      onSelectionChanged: (Set<TravelType> newTravelSelection) {
        ref
            .read(travelTypeNotifierProvider.notifier)
            .setTravelType(newTravelSelection.first);
      },
    );
  }
}
