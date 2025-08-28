import 'dart:async';

import 'package:dreamtravel/logic/utils/async_image_model.dart';

class ImageQueueProvider {
  final _imageQueueList = <AsyncImageModel>[]; // Setup a queue for async images

  void addImageToQueue({required Future<void> Function() imageFuture}) {
    final asyncImageModel = AsyncImageModel(
      imageCompleter: Completer(),
      imageFuture: imageFuture,
    );

    if (_imageQueueList.isEmpty) {
      _startImageFuture(asyncImageModel);
    }
  }

  Future<void> _startImageFuture(AsyncImageModel asyncImageModel) async {
    await asyncImageModel.imageFuture();
    // The Future for the image is complete
    asyncImageModel.imageCompleter.complete();
    // Remove 'isCompleted' images from the queue
    _imageQueueList.removeWhere((e) => e.imageCompleter.isCompleted);
    if (_imageQueueList.isNotEmpty) {
      _startImageFuture(_imageQueueList.first);
    }
  }
}
