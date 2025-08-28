import 'package:dreamtravel/ui/common/cards/top_bar_card.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopBarCard(child: Text("Page cannot be found, please try again later", style: TextStyle(fontSize: 40)));
  }
}