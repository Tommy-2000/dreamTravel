import 'package:dreamtravel/state/global_state.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../logic/navigation/nav_router.dart';
import '../common/cards/rounded_card.dart';
import '../common/cards/text_card.dart';

class RootApp extends ConsumerStatefulWidget with GlobalState {
  const RootApp({super.key});

  @override
  ConsumerState<RootApp> createState() => _RootAppState();
}

class _RootAppState extends ConsumerState<RootApp> {
  @override
  Widget build(BuildContext context) {
    final appStartup = widget.watchAppStartup(ref);

    return appStartup.when(
      loading: renderStartupLoadingWidget,
      error: (e, st) => renderStartupErrorWidget(e, st),
      data: (_) => renderApp(),
    );
  }

  MaterialApp renderApp() {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'dreamTravel - Travel Booking Platform',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: ref.watch(themeProvider) ? ThemeMode.dark : ThemeMode.light,
      routerConfig: ref.watch(navRouter),
      // Riverpod is bound to the NavRouter so that GoRouter can listen to state changes throughout the app
    );
  }

  Widget renderStartupLoadingWidget() {
    return CircularProgressIndicator();
  }

  Widget renderStartupErrorWidget(Object error, StackTrace stackTrace) {
    return RoundedCard(
      child: Column(
        children: [
          TextCard(
            data: error.toString(),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontColour: Colors.black,
            minFontSize: 12,
            maxLines: 2,
            softWrap: true,
            textAlign: TextAlign.center,
            textOverflow: TextOverflow.ellipsis,
          ),
          Gap(5),
          TextCard(
            data: stackTrace.toString(),
            fontSize: 10,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontColour: Colors.black,
            minFontSize: 7,
            maxLines: 8,
            softWrap: true,
            textAlign: TextAlign.center,
            textOverflow: TextOverflow.ellipsis,
          ),
          Gap(5),
          MaterialButton(
            child: Text("Reload"),
            onPressed: () {
              runApp(ProviderScope(child: RootApp()));
            },
          ),
        ],
      ),
    );
  }
}
