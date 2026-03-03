import 'package:dio/dio.dart';
import 'package:dreamtravel/logic/api/dio_constructor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Create the nodeProviders from the NodeProvider class
final nodeProvider = Provider<NodeProvider>((ref) {
  final nodeDio = ref.read(dioNodeProvider);
  return NodeProvider(nodeDio);
});

final nodeJsonProvider = Provider<NodeProvider>((ref) {
  final nodeJSONDio = ref.read(dioNodeJSONProvider);
  return NodeProvider(nodeJSONDio);
});

final nodeGraphQLProvider = Provider<NodeProvider>((ref) {
  final nodeGraphQLDio = ref.read(dioNodeGraphQLProvider);
  return NodeProvider(nodeGraphQLDio);
});


class NodeProvider {

  final Dio _dio;

  NodeProvider(this._dio);

  Future<Response> getRequest(String nodeEndpoint) async {
    try {
      return await _dio.get(nodeEndpoint);
    } catch (dioException) {
      throw Exception("Failed to get data from Node: $dioException");
    }
  }

  Future<Response> postRequest(
      String nodeEndpoint,
      Map<String, dynamic> responseData,
      ) async {
    try {
      return await _dio.post(nodeEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to post data to Node: $dioException");
    }
  }

  Future<Response> putRequest(
      String nodeEndpoint,
      Map<String, dynamic> responseData,
      ) async {
    try {
      return await _dio.put(nodeEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to update data in Node: $dioException");
    }
  }

  Future<Response> deleteRequest(
      String nodeEndpoint,
      Map<String, dynamic> responseData,
      ) async {
    try {
      return await _dio.delete(nodeEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to delete data in Node: $dioException");
    }
  }


}






