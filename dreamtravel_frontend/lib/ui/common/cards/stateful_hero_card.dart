import 'package:flutter/material.dart';


class StatefulHeroCard extends StatefulWidget {
  const StatefulHeroCard({super.key, required this.child, required this.childHeroTag, required this.childHeroOnTap});


  final Widget child;
  final String childHeroTag;
  final VoidCallback childHeroOnTap;


  @override
  State<StatefulHeroCard> createState() => _StatefulHeroCardState();

}

class _StatefulHeroCardState extends State<StatefulHeroCard> {

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
    widget.child; // Safely dispose of the child widget within the StatefulHeroCard when not rendered
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return const Placeholder();
  }


}


