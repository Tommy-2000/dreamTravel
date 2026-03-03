import 'package:dreamtravel/ui/screens/journal_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../screens/bookings_screen.dart';
import '../../screens/explore_screen.dart';
import '../../screens/campfire_screen.dart';
import '../../screens/test_screen.dart';
import '../../screens/user_screen.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final Icon navScreenIcon;
  final Icon navScreenSelectedIcon;

  NavScreenModel({
    required this.navScreen,
    required this.navScreenName,
    required this.navScreenIcon,
    required this.navScreenSelectedIcon,
  });
}

List<NavScreenModel> navScreens = [
  NavScreenModel(
    navScreen: ExploreScreen(),
    navScreenName: "Explore",
    navScreenIcon: Icon(
      FluentIcons.compass_northwest_24_regular,
      color: Colors.black,
    ),
    navScreenSelectedIcon: Icon(
      FluentIcons.compass_northwest_24_filled,
      color: Colors.black,
    ),
  ),
  NavScreenModel(
    navScreen: CampfireScreen(),
    navScreenName: "Campfire",
    navScreenIcon: Icon(FluentIcons.fire_24_regular, color: Colors.black),
    navScreenSelectedIcon: Icon(
      FluentIcons.fire_24_filled,
      color: Colors.black,
    ),
  ),
  NavScreenModel(
    navScreen: BookingsScreen(),
    navScreenName: "Bookings",
    navScreenIcon: Icon(
      FluentIcons.ticket_horizontal_24_regular,
      color: Colors.black,
    ),
    navScreenSelectedIcon: Icon(
      FluentIcons.ticket_horizontal_24_filled,
      color: Colors.black,
    ),
  ),
  NavScreenModel(
    navScreen: JournalScreen(),
    navScreenName: "Journal",
    navScreenIcon: Icon(FluentIcons.book_24_regular, color: Colors.black),
    navScreenSelectedIcon: Icon(
      FluentIcons.book_24_filled,
      color: Colors.black,
    ),
  ),
  NavScreenModel(
    navScreen: UserScreen(),
    navScreenName: "User",
    navScreenIcon: Icon(FluentIcons.person_24_regular, color: Colors.black),
    navScreenSelectedIcon: Icon(
      FluentIcons.person_24_filled,
      color: Colors.black,
    ),
  ),
  // NavScreenModel(
  //   navScreen: TestScreen(),
  //   navScreenName: "Test",
  //   navScreenIcon: Icon(FluentIcons.circle_24_regular, color: Colors.black),
  //   navScreenSelectedIcon: Icon(FluentIcons.circle_24_filled, color: Colors.black),
  // ),
];
