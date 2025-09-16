import 'package:flutter/material.dart';

class TravelSearchBar extends StatefulWidget {
  const TravelSearchBar({super.key});

  @override
  State<TravelSearchBar> createState() => _TravelSearchBarState();
}

class _TravelSearchBarState extends State<TravelSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 50),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: SearchBar(leading: Icon(Icons.search_rounded), hintText: "Where will you travel next?", onTap: () => {
        },),
      ),
    );
  }
}
