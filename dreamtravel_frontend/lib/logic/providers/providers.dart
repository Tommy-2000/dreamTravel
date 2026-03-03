
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dreamtravel/logic/providers/theme_notifier.dart';

final themeProvider = NotifierProvider<ThemeNotifier, bool>(
    ThemeNotifier.new
);

