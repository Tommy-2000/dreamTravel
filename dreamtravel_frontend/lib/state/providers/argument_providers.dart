import 'package:dreamtravel/state/notifiers/trip_details_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tripDetailsArgProvider = NotifierProvider<TripDetailsNotifier, String>(
  isAutoDispose: true,
  TripDetailsNotifier.new,
);

final bookingDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);

final flightBoardingDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);

final hotelBookingDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);

final tourBookingDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);

final campfireSocialDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);

final campfireAdventureDetailsArgProvider = Provider.autoDispose<String>(
  (ref) => throw Exception("Argument must be provided"),
);
