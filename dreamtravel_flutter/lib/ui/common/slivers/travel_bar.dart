import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelBar extends StatefulWidget {
  const TravelBar({
    super.key, required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  State<TravelBar> createState() => _TravelBarState();
}

class _TravelBarState extends State<TravelBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: 50,
      floating: true,
      snap: true,
      stretch: true,
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(30)),
      backgroundColor: Colors.lightBlue,
      title: Text(
          widget.appBarTitle
      ),
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      leading: IconButton(
        onPressed: () => {},
        icon: Icon(Icons.search_rounded, color: Colors.white),
      ),
      automaticallyImplyLeading: true,
    );
  }
}