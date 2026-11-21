import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

sealed class Observer extends ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    log('''
      Provider ${context.provider.name} has been added with $value
    ''');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    log('''
  Provider ${context.provider.name} has been updated with $newValue
''');
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    log('''
    Provider ${context.provider.name} has been disposed
''');
    super.didDisposeProvider(context);
  }
}
