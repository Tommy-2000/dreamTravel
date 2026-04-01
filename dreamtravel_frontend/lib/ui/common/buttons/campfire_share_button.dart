import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CampfireShareButton extends StatefulWidget {
  const CampfireShareButton({super.key});

  @override
  State<CampfireShareButton> createState() =>
      _CampfireShareButtonState();
}

class _CampfireShareButtonState extends State<CampfireShareButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.green,
      splashColor: Colors.greenAccent,
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Post has a reaction")));
      },
      icon: Icon(FluentIcons.share_24_filled, color: Colors.white),);
  }
}
