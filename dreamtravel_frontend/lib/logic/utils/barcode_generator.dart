import 'dart:convert';

import 'package:barcode/barcode.dart';
import 'package:flutter_svg/svg.dart';

class BarcodeGenerator {
  final Barcode barcodeType;
  final String barcodeStringData;
  final double barcodeHeight;
  final double barcodeWidth;
  final bool barcodeDrawText;

  const BarcodeGenerator({
    required this.barcodeType,
    required this.barcodeStringData,
    required this.barcodeDrawText,
    required this.barcodeHeight,
    required this.barcodeWidth,
  });

  SvgPicture convertStringToBarcodeSvg() {
    final barcodeSVGString = barcodeType.toSvg(
      barcodeStringData,
      height: barcodeHeight,
      width: barcodeWidth,
      drawText: barcodeDrawText,
    );

    if (barcodeType.isValid(barcodeSVGString)) {
      return SvgPicture.string(barcodeSVGString);
    } else {
      return SvgPicture.string("Error");
    }
  }

  SvgPicture convertBytesToBarcodeSvg() {
    final barcodeBytes = utf8.encode(barcodeStringData);

    final barcodeSVGBytes = barcodeType.toSvgBytes(
      barcodeBytes,
      height: barcodeHeight,
      width: barcodeWidth,
      drawText: barcodeDrawText,
    );

    if (barcodeType.isValid(barcodeSVGBytes)) {
      return SvgPicture.string(barcodeSVGBytes);
    } else {
      return SvgPicture.string("Error");
    }
  }
}
