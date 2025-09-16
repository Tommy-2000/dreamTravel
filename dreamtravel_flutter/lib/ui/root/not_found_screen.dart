import 'package:flutter/material.dart';

import '../common/headline_box.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return const HeadlineBox(child: Column(
      children: [
        Text("404", style: TextStyle(fontSize: 60)),
        Text("This page cannot be found, please try again later", style: TextStyle(fontSize: 35)),
      ],
    ));
  }
}