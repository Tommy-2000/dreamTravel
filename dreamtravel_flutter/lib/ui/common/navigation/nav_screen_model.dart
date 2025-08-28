import 'package:dreamtravel/ui/bookings/bookings_screen.dart';
import 'package:dreamtravel/ui/explore/explore_screen.dart';
import 'package:dreamtravel/ui/search/search_screen.dart';
import 'package:dreamtravel/ui/trips/trips_screen.dart';
import 'package:dreamtravel/ui/user/user_screen.dart';
import 'package:flutter/material.dart';

// import 'rive_model.dart';

class NavScreenModel {
  final Widget navScreen;
  final Text navScreenName;
  final Icon navScreenIcon;

  // final RiveModel riveModel;

  NavScreenModel({
    required this.navScreen,
    required this.navScreenName,
    required this.navScreenIcon,
    // required this.riveModel
  });
}

List<NavScreenModel> navScreenItems = [
  NavScreenModel(
    navScreen: ExploreScreen(),
    navScreenName: Text("Explore", style: TextStyle(color: Colors.white)),
    navScreenIcon: Icon(Icons.travel_explore_rounded, color: Colors.white),
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "EXPLORE",
    //     riveStateMachineName: "EXPLORE"),
  ),
  NavScreenModel(
    navScreen: TripsScreen(),
    navScreenName: Text("Trips", style: TextStyle(color: Colors.white)),
    navScreenIcon: Icon(Icons.beach_access_rounded, color: Colors.white),
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "TRIPS",
    //     riveStateMachineName: "TRIPS"),
  ),
  NavScreenModel(
    navScreen: BookingsScreen(),
    navScreenName: Text("Bookings", style: TextStyle(color: Colors.white)),
    navScreenIcon: Icon(Icons.airplane_ticket_rounded, color: Colors.white),
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "BOOKINGS",
    //     riveStateMachineName: "BOOKINGS"),
  ),
  NavScreenModel(
    navScreen: SearchScreen(),
    navScreenName: Text("Search", style: TextStyle(color: Colors.white)),
    navScreenIcon: Icon(Icons.search_rounded, color: Colors.white),
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "SEARCH",
    //     riveStateMachineName: "SEARCH"),
  ),
  NavScreenModel(
    navScreen: UserScreen(),
    navScreenName: Text("User", style: TextStyle(color: Colors.white)),
    navScreenIcon: Icon(Icons.account_circle_rounded, color: Colors.white),
    // riveModel: RiveModel(riveSrc: "riveSrc",
    //     riveArtboard: "USER",
    //     riveStateMachineName: "USER"),
  ),
];
