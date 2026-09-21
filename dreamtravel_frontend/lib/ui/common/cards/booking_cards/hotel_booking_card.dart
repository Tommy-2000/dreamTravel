import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelBookingCard extends StatelessWidget {
  final HotelBookingData? hotelBookingData;
  final bool appIsLandscape;

  const HotelBookingCard({
    super.key,
    this.hotelBookingData,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCard(
                    data:
                        hotelBookingData?.hotelBookingNumber.toString() ??
                        stringIsEmpty,
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
                    data:
                        hotelBookingData?.hotelCheckOutDay.toIso8601String() ??
                        stringIsEmpty,
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
                    data:
                        hotelBookingData?.hotelCheckOutDay.toIso8601String() ??
                        stringIsEmpty,
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
                ],
              ),
              TextCard(
                data: hotelBookingData?.hotelCheckInTime ?? stringIsEmpty,
                fontSize: appIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
              TextCard(
                data:
                    hotelBookingData?.hotelRoomNumber.toString() ??
                    stringIsEmpty,
                fontSize: appIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
              TextCard(
                data: hotelBookingData?.hotelFloor ?? stringIsEmpty,
                fontSize: appIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
              TextCard(
                data: hotelBookingData?.hotelManager ?? stringIsEmpty,
                fontSize: appIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
