import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'interceptors/connection_retrier.dart';
import 'interceptors/retry_on_connection_change_interceptor.dart';

// Instantiate the apiProvider from the ApiProvider class
final apiProvider = Provider<ApiProvider>(ApiProvider.new);

class ApiProvider {
  final Ref ref;
  late Dio dio;

  ApiProvider(this.ref) {
    dio = Dio();
    dio.options.connectTimeout = Duration(seconds: 5000);
    dio.options.sendTimeout = Duration(seconds: 5000);
    dio.options.receiveTimeout = Duration(seconds: 3000);
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        connectionRetrier: ConnectionRetrier(dio, Connectivity()),
      ),
    );
  }

  Future<Response> getRequest({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? getHeaders,
  }) async {
    try {
      return await dio.get(
        apiEndpoint,
        queryParameters: queryParameters,
        options: Options(method: 'GET', headers: getHeaders),
      );
    } catch (dioException) {
      throw Exception(
        "Dio has failed to GET data from address: $apiEndpoint - See : $dioException",
      );
    }
  }

  Future<Response> postRequest({
    required String apiEndpoint,
    Map<String, dynamic>? postHeaders,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? responseData,
  }) async {
    try {
      return await dio.post(
        apiEndpoint,
        queryParameters: queryParameters,
        options: Options(method: 'POST', headers: postHeaders),
        data: responseData,
      );
    } catch (dioException) {
      throw Exception(
        "Dio has failed to POST data to address: $apiEndpoint - See : $dioException",
      );
    }
  }

  Future<Response> putRequest({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? putHeaders,
    Map<String, dynamic>? responseData,
  }) async {
    try {
      return await dio.put(
        apiEndpoint,
        queryParameters: queryParameters,
        options: Options(method: 'PUT', headers: putHeaders),
        data: responseData,
      );
    } catch (dioException) {
      throw Exception(
        "Dio has failed to PUT data at address: $apiEndpoint - See : $dioException",
      );
    }
  }

  Future<Response> deleteRequest({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? deleteHeaders,
  }) async {
    try {
      return await dio.delete(
        apiEndpoint,
        queryParameters: queryParameters,
        options: Options(method: 'DELETE', headers: deleteHeaders),
      );
    } catch (dioException) {
      throw Exception(
        "Dio has failed to DELETE data from address: $apiEndpoint - See : $dioException",
      );
    }
  }
}
