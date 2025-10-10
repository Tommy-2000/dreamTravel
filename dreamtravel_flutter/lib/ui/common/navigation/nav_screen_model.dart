import 'package:dreamtravel/ui/screens/test_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/bookings/bookings_screen.dart';
import '../../screens/explore/explore_screen.dart';
import '../../screens/planner/planner_screen.dart';
import '../../screens/user/user_screen.dart';

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
    navScreen: PlannerScreen(),
    navScreenName: "Planner",
    navScreenIcon: Icons.map_rounded
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
