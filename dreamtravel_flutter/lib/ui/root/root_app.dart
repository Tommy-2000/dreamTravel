import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../logic/navigation/travel_go_router.dart';

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
      title: 'dreamTravel - Travel Booking Platform',
      theme: ThemeData(
        useMaterial3: true,
        useSystemColors: true,
        primarySwatch: Colors.lightBlue,
      ),
      routerConfig: TravelGoRouter().travelGoRouter,
    );
  }
}
