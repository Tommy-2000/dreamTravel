import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/root/root_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';


Future<void> main() async {
  try {
    // Ensure that all Flutter bindings are initialized - Use this with Gestures and the render tree
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e){
    e.toString();
  }
  if (kDebugMode) {
    // Check image caching with network
    CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  }

  // Set the Url path strategy if the app is running in Web mode
  if (kIsWeb) {
    usePathUrlStrategy();
  }

  if (kDebugMode) {
    // Check if the web build is rendering with CanvasKit or WASM
    if (bool.fromEnvironment('dart.tool.dart2wasm') == true) {
      print("Web build is rendering with WebAssembly");
    } else {
      print("Web build is rendering with CanvasKit");
    }
  }

  // Run the core Flutter app from the root
  runApp(ProviderScope(child: RootApp()));
}
