import 'package:dio/dio.dart';
import 'package:dreamtravel/logic/api/providers/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Create the two amadeusProviders from the following class
final amadeusJsonProvider = Provider<AmadeusProvider>((ref) {
  final jsonDio = ref.read(dioJsonProvider);
  return AmadeusProvider(jsonDio);
});

final amadeusEncodedProvider = Provider<AmadeusProvider>((ref) {
  final encodedDio = ref.read(dioUrlEncodedProvider);
  return AmadeusProvider(encodedDio);
});

class AmadeusProvider {
  final Dio _dio;

  AmadeusProvider(this._dio);

  Future<Response> getRequest(String amadeusEndpoint) async {
    try {
      return await _dio.get(amadeusEndpoint);
    } catch (dioException) {
      throw Exception("Failed to get data from Amadeus: $dioException");
    }
  }

  Future<Response> postRequest(
    String amadeusEndpoint,
    Map<String, dynamic> responseData,
  ) async {
    try {
      return await _dio.post(amadeusEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to post data to Amadeus: $dioException");
    }
  }

  Future<Response> putRequest(
    String amadeusEndpoint,
    Map<String, dynamic> responseData,
  ) async {
    try {
      return await _dio.put(amadeusEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to update data in Amadeus: $dioException");
    }
  }

  Future<Response> deleteRequest(
    String amadeusEndpoint,
    Map<String, dynamic> responseData,
  ) async {
    try {
      return await _dio.delete(amadeusEndpoint, data: responseData);
    } catch (dioException) {
      throw Exception("Failed to delete data in Amadeus: $dioException");
    }
  }
}
