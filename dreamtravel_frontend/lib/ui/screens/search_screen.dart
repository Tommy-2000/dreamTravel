import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.searchQuery});

  final String? searchQuery;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final FocusNode searchFocusNode = FocusNode();
  final TextEditingController _searchTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}
