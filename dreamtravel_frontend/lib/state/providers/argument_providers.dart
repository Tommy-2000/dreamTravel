import 'package:dreamtravel/state/arg_notifiers/trip_arg_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../arg_notifiers/booking_arg_notifier.dart';
import '../arg_notifiers/campfire_arg_notifier.dart';

// ArgProviders are used for handling arguments in state when navigating between child screens within a parent scaffold
final tripDetailsArgProvider =
    AsyncNotifierProvider.autoDispose<TripArgNotifier, String>(
      TripArgNotifier.new,
    );

final campfireDetailsArgProvider =
    AsyncNotifierProvider.autoDispose<CampfireArgNotifier, String>(
      CampfireArgNotifier.new,
    );

final bookingDetailsArgProvider =
    AsyncNotifierProvider.autoDispose<BookingArgNotifier, String>(
      BookingArgNotifier.new,
    );
