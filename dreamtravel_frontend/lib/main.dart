import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/root/root_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';


Future<void> main() async {
  try {
    // Ensure that all Flutter bindings are initialized and that accessibility tools are enabled in Web mode
    WidgetsFlutterBinding.ensureInitialized().ensureSemantics();

    // Set the Url path strategy if the app is running in Web mode
    if (kIsWeb) {
      usePathUrlStrategy();
    }
  } catch (e){
    e.toString();
  }

  // Check image caching with network when in Debug mode
  if (kDebugMode) {
    CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  }

  // Run the core Flutter app from the root
  runApp(ProviderScope(child: RootApp()));
}
