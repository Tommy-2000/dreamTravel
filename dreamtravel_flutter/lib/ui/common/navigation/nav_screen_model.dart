import 'package:dreamtravel/ui/bookings/bookings_screen.dart';
import 'package:dreamtravel/ui/bookings/flights_screen.dart';
import 'package:dreamtravel/ui/bookings/hotel_screen.dart';
import 'package:dreamtravel/ui/bookings/rentals_screen.dart';
import 'package:dreamtravel/ui/explore/explore_screen.dart';
import 'package:dreamtravel/ui/search/search_screen.dart';
import 'package:dreamtravel/ui/test_screen.dart';
// import 'package:dreamtravel/ui/test_screen.dart';
// import 'package:dreamtravel/ui/trips/trips_screen.dart';
import 'package:dreamtravel/ui/user/user_screen.dart';
import 'package:flutter/material.dart';

// import 'rive_model.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final IconData navScreenIcon;

  // final RiveModel riveModel;

  NavScreenModel({
    required this.navScreen,
    required this.navScreenName,
    required this.navScreenIcon,
    // required this.riveModel
  });
}

List<NavScreenModel> navScreens = [
  NavScreenModel(
    navScreen: ExploreScreen(),
    navScreenName: "Explore",
    navScreenIcon: Icons.travel_explore_rounded,
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "EXPLORE",
    //     riveStateMachineName: "EXPLORE"),
  ),
  NavScreenModel(
    navScreen: SearchScreen(),
    navScreenName: "Search",
    navScreenIcon: Icons.search_rounded
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "SEARCH",
    //     riveStateMachineName: "SEARCH"),
  ),
  NavScreenModel(
    navScreen: BookingsScreen(),
    navScreenName: "Bookings",
    navScreenIcon: Icons.airplane_ticket_rounded,
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "BOOKINGS",
    //     riveStateMachineName: "BOOKINGS"),
  ),
  NavScreenModel(
    navScreen: UserScreen(),
    navScreenName: "User",
    navScreenIcon: Icons.account_circle_rounded,
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "USER",
    //     riveStateMachineName: "USER"),
  ),
  NavScreenModel(
    navScreen: TestScreen(),
    navScreenName: "Test",
    navScreenIcon: Icons.api_rounded,
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "USER",
    //     riveStateMachineName: "USER"),
  ),
  // NavScreenModel(
  //   navScreen: TestScreen(),
  //   navScreenName: Text("Test", style: TextStyle(color: Colors.white)),
  //   navScreenIcon: Icon(Icons.question_mark_rounded, color: Colors.white),
  // ),
];


List<NavScreenModel> subNavScreens = [
  NavScreenModel(
    navScreen: FlightsScreen(),
    navScreenName: "Flights",
    navScreenIcon: Icons.flight_rounded,
  ),
  NavScreenModel(
    navScreen: HotelsScreen(),
    navScreenName: "Hotels",
    navScreenIcon: Icons.hotel_rounded,
  ),
  NavScreenModel(
    navScreen: RentalsScreen(),
    navScreenName: "Rentals",
    navScreenIcon: Icons.holiday_village_rounded,
  ),
];
