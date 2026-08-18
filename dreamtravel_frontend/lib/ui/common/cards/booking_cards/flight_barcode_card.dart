import 'package:barcode/barcode.dart';
import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/logic/utils/barcode_generator.dart';
import 'package:flutter/material.dart';

class FlightBarcodeCard extends StatelessWidget {
  final FlightBoardingData? flightBoardingData;
  final bool appIsLandscape;

  const FlightBarcodeCard({
    super.key,
    this.flightBoardingData,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    final flightBoardingBarcode = BarcodeGenerator(
      barcodeType: Barcode.dataMatrix(),
      barcodeStringData:
          flightBoardingData?.flightBoardingNumber.toString() ?? stringIsEmpty,
      barcodeHeight: 300,
      barcodeWidth: 300,
      barcodeDrawText: true,
    ).convertStringToBarcodeSvg();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          color: colourScheme.onPrimary,
          child: flightBoardingBarcode,
        ),
      ),
    );
  }
}
