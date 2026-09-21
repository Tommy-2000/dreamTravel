import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/screens/diary_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../screens/bookings_screen.dart';
import '../../screens/explore_screen.dart';
import '../../screens/campfire_screen.dart';
import '../../screens/user_screen.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final Widget navScreenIcon;
  final Widget navScreenSelectedIcon;

  const NavScreenModel({
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
    navScreen: DiaryScreen(),
    navScreenName: "Diary",
    navScreenIcon: Icon(FluentIcons.book_24_regular, color: Colors.black),
    navScreenSelectedIcon: Icon(
      FluentIcons.book_24_filled,
      color: Colors.black,
    ),
  ),
  NavScreenModel(
    navScreen: UserScreen(),
    navScreenName: "User",
    navScreenIcon: CircleAvatar(
      backgroundImage: CachedNetworkImageProvider(
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1974",
      ),
      radius: 20,
    ),
    navScreenSelectedIcon: CircleAvatar(
      backgroundImage: CachedNetworkImageProvider(
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1974",
      ),
      radius: 20,
    ),
  ),
];
