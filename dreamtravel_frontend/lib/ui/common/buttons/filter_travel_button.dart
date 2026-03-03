import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the types of travel
enum TravelType { flights, hotels, experiences }

class TravelTypeNotifier extends Notifier<TravelType> {
  @override
  TravelType build() {
    return TravelType.flights; // Set the default state to flights
  }

  setTravelType(TravelType travelType) {
    state = travelType;
  }
}

class FilterTravelButton extends StatelessWidget {
  const FilterTravelButton({
    super.key,
    required this.text,
    required this.icon,
    required this.selectedIcon,
    required this.isButtonToggled,
  });

  final String text;
  final IconData icon;
  final IconData selectedIcon;
  final bool isButtonToggled;

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return MaterialButton(
      color: colourScheme.primary,
      splashColor: colourScheme.primary,
      padding: EdgeInsets.all(15),
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(35)),
      mouseCursor: SystemMouseCursors.click,
      child: Row(
        spacing: 5,
        children: [
          isButtonToggled
              ? Icon(icon, color: Colors.white)
              : Icon(selectedIcon, color: Colors.white,),
          Text(text, style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),),
        ],
      ),
      onPressed: () {},
    );
  }
}
