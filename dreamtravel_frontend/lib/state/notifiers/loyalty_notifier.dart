import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoyaltyNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggleLoyalty() {
    state = !state;
  }
}
