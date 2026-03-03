import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dreamtravel/logic/api/interceptors/connection_retrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final ConnectionRetrier connectionRetrier;

  RetryOnConnectionChangeInterceptor({required this.connectionRetrier});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_shouldRetry(err)) {
      try {
        connectionRetrier.retryRequest(err.requestOptions);
      } catch (e) {}
    }
  }

  // Check whether the connection should retry based on the type of dio exception
  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout &&
        err.error != null &&
        err.error is SocketException;
  }
}
