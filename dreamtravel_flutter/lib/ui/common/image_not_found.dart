import 'package:flutter/material.dart';

class ImageNotFound extends StatefulWidget {
  const ImageNotFound({super.key});

  @override
  State<ImageNotFound> createState() => _ImageNotFoundState();
}

class _ImageNotFoundState extends State<ImageNotFound> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.image_not_supported_rounded, size: 100.0),
        Text("Image not found, try refreshing the page"),
      ],
    );
  }
}
