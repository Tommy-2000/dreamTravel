import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking_image_card.dart';

class BookingSummaryCard extends ConsumerWidget {
  final String? bookingImageUrl;
  final bool appIsLandscape;
  final VoidCallback viewBookingCallback;

  const BookingSummaryCard({
    super.key,
    this.bookingImageUrl,
    required this.appIsLandscape,
    required this.viewBookingCallback,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colourScheme = Theme.of(context).colorScheme;

    final bookingDataList = ref.watch(bookingDataListProvider);

    return ClipRRect(
      borderRadius: BorderRadius.circular(75),
      child: bookingDataList.when(
        data: (data) => Row(
          children: [
            BookingImageCard(
              bookingImageUrl: bookingImageUrl ?? imageUrlNullAddress,
              context: context,
            ),
            renderBookingDetails(colourScheme, data)
          ],
        ),
        error: (err, stack) => ImageNotFound(),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  Widget renderBookingDetails(ColorScheme colourScheme, List<BookingData> data) {
    return Card(
      key: GlobalKey(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          spacing: 0,
          children: [
            TextCard(
              data: "#${data.first.bookingId}",
              fontSize: appIsLandscape ? 20 : 15,
              fontWeight: FontWeight.bold,
              fontStyle: GoogleFonts.montserrat().fontStyle,
              fontColour: colourScheme.primary,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.fade,
            ),
            TextCard(
              data: data.first.bookingFirstName,
              fontSize: appIsLandscape ? 20 : 15,
              fontWeight: FontWeight.bold,
              fontStyle: GoogleFonts.montserrat().fontStyle,
              fontColour: colourScheme.primary,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.fade,
            ),
            TextCard(
              data: data.first.bookingLastName,
              fontSize: appIsLandscape ? 20 : 15,
              fontWeight: FontWeight.bold,
              fontStyle: GoogleFonts.montserrat().fontStyle,
              fontColour: colourScheme.primary,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.fade,
            ),
            TextCard(
              data: "${data.first.bookingPassengers}",
              fontSize: appIsLandscape ? 20 : 15,
              fontWeight: FontWeight.bold,
              fontStyle: GoogleFonts.montserrat().fontStyle,
              fontColour: colourScheme.primary,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.fade,
            ),
            TextCard(
              data: "£${data.first.bookingTotalCost}",
              fontSize: appIsLandscape ? 20 : 15,
              fontWeight: FontWeight.bold,
              fontStyle: GoogleFonts.montserrat().fontStyle,
              fontColour: colourScheme.primary,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                data.first.flightBoardingData == null &&
                    data.first.flightBoardingData!.isEmpty
                    ? Icon(Icons.flight_rounded)
                    : renderDebugErrorCard(),
                data.first.hotelBookingData == null &&
                    data.first.hotelBookingData!.isEmpty
                    ? Icon(Icons.hotel_rounded)
                    : renderDebugErrorCard(),
                data.first.tourBookingData == null &&
                    data.first.tourBookingData!.isEmpty
                    ? Icon(Icons.tour_rounded)
                    : renderDebugErrorCard(),
              ],
            ),
            MaterialButton(
              color: colourScheme.primaryContainer,
              onPressed: viewBookingCallback,
              child: Text("View Booking"),
            ),
          ],
        ),
      ),
    );
  }

  Card renderDebugErrorCard() {
    return Card(child: Column(children: [Text("${StackTrace.current}")]));
  }

}
