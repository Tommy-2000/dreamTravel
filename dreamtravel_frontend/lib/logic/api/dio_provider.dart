import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'interceptors/connection_retrier.dart';
import 'interceptors/retry_on_connection_change_interceptor.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 5000),
      sendTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );
  dio.interceptors.add(
    RetryOnConnectionChangeInterceptor(
      connectionRetrier: ConnectionRetrier(dio, Connectivity()),
    ),
  );
  return dio;
});
