import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:dreamtravel/ui/root/root_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../logic/navigation/go_router.dart';

class RootApp extends ConsumerStatefulWidget {
  const RootApp({super.key});

  @override
  ConsumerState<RootApp> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'dreamTravel',
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue 
),
      routerConfig: goRouter,
    );
  }
}
