import 'package:dreamtravel/ui/bookings/bookings_screen.dart';
import 'package:dreamtravel/ui/explore/explore_screen.dart';
import 'package:dreamtravel/ui/search/search_screen.dart';
import 'package:dreamtravel/ui/test_screen.dart';
import 'package:dreamtravel/ui/user/user_screen.dart';
import 'package:flutter/material.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final IconData navScreenIcon;


  NavScreenModel({
    required this.navScreen,
    required this.navScreenName,
    required this.navScreenIcon,
  });
}

List<NavScreenModel> navScreens = [
  NavScreenModel(
    navScreen: ExploreScreen(),
    navScreenName: "Explore",
    navScreenIcon: Icons.travel_explore_rounded,
  ),
  NavScreenModel(
    navScreen: SearchScreen(),
    navScreenName: "Search",
    navScreenIcon: Icons.search_rounded
  ),
  NavScreenModel(
    navScreen: BookingsScreen(),
    navScreenName: "Bookings",
    navScreenIcon: Icons.airplane_ticket_rounded,
  ),
  NavScreenModel(
    navScreen: UserScreen(),
    navScreenName: "User",
    navScreenIcon: Icons.account_circle_rounded,
  ),
  NavScreenModel(
    navScreen: TestScreen(),
    navScreenName: "Test",
    navScreenIcon: Icons.api_rounded
  ),
];
