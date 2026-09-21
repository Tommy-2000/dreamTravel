import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggleAuthenticated() {
    state = !state;
  }
}
