import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverTitleBar extends StatefulWidget {
  const SliverTitleBar({
    super.key, required this.data,
  });

  final String data;

  @override
  State<SliverTitleBar> createState() => _SliverTitleBarState();
}

class _SliverTitleBarState extends State<SliverTitleBar> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SliverAppBar(
      centerTitle: true,
      expandedHeight: 60,
      floating: true,
      snap: true,
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(35)),
      backgroundColor: colourScheme.primary,
      title: Text(
          widget.data
      ),
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      automaticallyImplyLeading: true,
    );
  }
}