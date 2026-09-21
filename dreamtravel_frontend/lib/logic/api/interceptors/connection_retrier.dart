import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class ConnectionRetrier {
  final Dio dio;
  final Connectivity connectivity;

  ConnectionRetrier(this.dio, this.connectivity);

  Future<Response> retryRequest(RequestOptions requestOptions) async {
    // Initialise the connection stream and the future completer
    late StreamSubscription connectionStream;
    final responseCompleter = Completer<Response>();

    connectionStream = connectivity.onConnectivityChanged.listen((
      connectivityResult,
    ) {
      if (connectivityResult != ConnectivityResult.none) {
        connectionStream.cancel(); // Listen for the connection and clean up the subscription
        responseCompleter.complete(
          // When the response is complete, return it with these options
          dio.request(
            requestOptions.path,
            cancelToken: requestOptions.cancelToken,
            data: requestOptions.data,
            onReceiveProgress: requestOptions.onReceiveProgress,
            onSendProgress: requestOptions.onSendProgress,
            queryParameters: requestOptions.queryParameters,
            options: Options(
              method: requestOptions.method,
              sendTimeout: requestOptions.sendTimeout,
              receiveTimeout: requestOptions.receiveTimeout,
              extra: requestOptions.extra,
              headers: requestOptions.headers,
              responseType: requestOptions.responseType,
              contentType: requestOptions.contentType,
              validateStatus: requestOptions.validateStatus,
              receiveDataWhenStatusError:
                  requestOptions.receiveDataWhenStatusError,
              followRedirects: requestOptions.followRedirects,
              maxRedirects: requestOptions.maxRedirects,
              requestEncoder: requestOptions.requestEncoder,
              responseDecoder: requestOptions.responseDecoder,
              listFormat: requestOptions.listFormat,
            ),
          ),
        );
      }
    });
    return responseCompleter.future; // Return the completed future
  }
}
