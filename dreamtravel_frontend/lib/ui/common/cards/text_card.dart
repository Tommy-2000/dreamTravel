import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCard extends StatelessWidget {
  const TextCard({super.key, required this.data, required this.fontSize, required this.fontWeight, required this.fontStyle, required this.fontColour, required this.minFontSize, required this.maxLines, required this.softWrap, required this.textAlign, required this.textOverflow});

  final String data;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle? fontStyle;
  final Color fontColour;
  final double minFontSize;
  final int maxLines;
  final bool softWrap;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(3),
      child: AutoSizeText(
        data,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: GoogleFonts.aBeeZee().fontStyle,
          color: fontColour,
        ),
        minFontSize: minFontSize,
        maxLines: maxLines,
        softWrap: softWrap,
        textAlign: textAlign,
        overflow: textOverflow,
      ),
    );
  }
}
