import 'package:flutter/material.dart';
import '../../logic/navigation/nav_router.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'dreamTravel - Travel Booking Platform',
      theme: ThemeData(
        useMaterial3: true,
        useSystemColors: true,
        primarySwatch: Colors.lightBlue
      ),
      routerConfig: NavRouter().goRouter,
    );
  }
}
