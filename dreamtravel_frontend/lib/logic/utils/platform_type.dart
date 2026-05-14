import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final platformTypeProvider = Provider<PlatformType>(
  (ref) => detectPlatformType(),
);

enum PlatformType { android, iOS, web, windows, macOS, linux, other }

PlatformType detectPlatformType() {
  if (kIsWeb) {
    return PlatformType.web;
  } else {
    if (Platform.isAndroid) {
      return PlatformType.android;
    } else if (Platform.isIOS) {
      return PlatformType.iOS;
    } else if (Platform.isWindows) {
      return PlatformType.windows;
    } else if (Platform.isMacOS) {
      return PlatformType.macOS;
    } else if (Platform.isLinux) {
      return PlatformType.linux;
    }
    return PlatformType.other;
  }
}
