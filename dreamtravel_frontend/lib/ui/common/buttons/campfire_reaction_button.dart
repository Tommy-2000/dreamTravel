import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CampfireReactionButton extends StatefulWidget {
  const CampfireReactionButton({super.key});

  @override
  State<CampfireReactionButton> createState() =>
      _CampfireReactionButtonState();
}

class _CampfireReactionButtonState extends State<CampfireReactionButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Post has been shared")));
      },
      icon: Icon(FluentIcons.emoji_24_filled, color: Colors.white),
    );
  }
}
