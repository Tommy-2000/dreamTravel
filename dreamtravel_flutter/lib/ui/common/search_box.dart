import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 50),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: SearchBar(leading: Icon(Icons.search_rounded), hintText: "Where will you travel next?"),
      ),
    );
  }
}
