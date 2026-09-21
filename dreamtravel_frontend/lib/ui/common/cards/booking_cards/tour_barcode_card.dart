import 'package:barcode/barcode.dart';
import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:dreamtravel/logic/utils/barcode_generator.dart';
import 'package:flutter/material.dart';

class TourBarcodeCard extends StatelessWidget {
  final TourBookingData tourBookingData;
  final bool appIsLandscape;

  const TourBarcodeCard({
    super.key,
    required this.tourBookingData,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    final tourBookingBarcode = BarcodeGenerator(
      barcodeType: Barcode.qrCode(),
      barcodeStringData: tourBookingData.tourBookingNumber.toString(),
      barcodeHeight: 300,
      barcodeWidth: 300,
      barcodeDrawText: true,
    ).convertStringToBarcodeSvg();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(color: colourScheme.onPrimary, child: tourBookingBarcode),
      ),
    );
  }
}
