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

    final bookingData = ref.watch(bookingDataProvider);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: bookingData.when(
          data: (data) => Row(
            children: [
              BookingImageCard(
                bookingImageUrl: bookingImageUrl ?? imageUrlNullAddress,
                context: context,
              ),
              bookingDetails(colourScheme, data)
            ],
          ),
          error: (err, stack) => ImageNotFound(),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget bookingDetails(ColorScheme colourScheme, List<BookingData> data) {
    return Card(
      key: GlobalKey(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          spacing: 0,
          children: [
            TextCard(
              data: "#${data[0].bookingId}",
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
              data: data[0].bookingFirstName,
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
              data: data[0].bookingLastName,
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
              data: "${data[0].bookingPassengers}",
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
              data: "£${data[0].bookingPrice}",
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
                data[0].flightBoardingData == null &&
                    data[0].flightBoardingData!.isEmpty
                    ? Icon(Icons.flight_rounded)
                    : const Placeholder(),
                data[0].hotelBookingData == null &&
                    data[0].hotelBookingData!.isEmpty
                    ? Icon(Icons.hotel_rounded)
                    : const Placeholder(),
                data[0].tourBookingData == null &&
                    data[0].tourBookingData!.isEmpty
                    ? Icon(Icons.tour_rounded)
                    : const Placeholder(),
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
}
