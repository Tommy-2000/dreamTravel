import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelAppBar extends StatefulWidget {
  const TravelAppBar({
    super.key, required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  State<TravelAppBar> createState() => _TravelAppBarState();
}

class _TravelAppBarState extends State<TravelAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: 60,
      floating: true,
      snap: true,
      stretch: true,
      systemOverlayStyle: SystemUiOverlayStyle(),
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
        icon: Icon(Icons.search_rounded, color: Colors.white,),
      ),
      automaticallyImplyLeading: true,
    );
  }
}