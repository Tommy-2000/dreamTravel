import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dio_provider.dart';

// Instantiate the apiProvider from the ApiProvider class
final apiProvider = Provider.autoDispose<ApiProvider>((ref) {
  final dio = ref.read(dioProvider);
  return ApiProvider(dio);
});

class ApiProvider {
  final Dio dio;

  const ApiProvider(this.dio);

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
