import 'package:barcode/barcode.dart';
import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/logic/utils/barcode_generator.dart';
import 'package:flutter/material.dart';

class HotelBarcodeCard extends StatelessWidget {
  final HotelBookingData? hotelBookingData;
  final bool appIsLandscape;

  const HotelBarcodeCard({
    super.key,
    this.hotelBookingData,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    final hotelBookingBarcode = BarcodeGenerator(
      barcodeType: Barcode.qrCode(),
      barcodeStringData:
          hotelBookingData?.hotelBookingNumber.toString() ?? stringIsEmpty,
      barcodeHeight: 300,
      barcodeWidth: 300,
      barcodeDrawText: true,
    ).convertStringToBarcodeSvg();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(color: colourScheme.onPrimary, child: hotelBookingBarcode),
      ),
    );
  }
}
