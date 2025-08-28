import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/root/root_app.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// import 'firebase_options.dart';


Future<void> main() async {
  try {
    // Ensure that all Flutter widgets are initialized
    WidgetsFlutterBinding.ensureInitialized();
    // // Configure Firebase initialization using firebase_options.dart
    // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);}
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

  // Run the core Flutter app from the root
  runApp(ProviderScope(child: RootApp()));
}
