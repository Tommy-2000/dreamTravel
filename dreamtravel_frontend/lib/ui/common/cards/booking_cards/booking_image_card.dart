import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';

class BookingImageCard extends StatelessWidget {
  const BookingImageCard({
    super.key,
    required this.bookingImageUrl,
    required this.context,
  });

  final String bookingImageUrl;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Card(
      key: GlobalKey(),
      child: CachedNetworkImage(
        width: 275,
        fit: BoxFit.cover,
        imageUrl: bookingImageUrl,
        // Load a progress placeholder while fetching image url
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
        imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
      ),
    );
  }
}
