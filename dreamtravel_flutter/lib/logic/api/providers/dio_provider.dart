import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


final dioJsonProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: "https://test.api.amadeus.com/",
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': 'application/vnd.amadeus+json',
        'Accept': 'application/vnd.amadeus+json'
      }
    ),
  );
});


final dioUrlEncodedProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: "https://test.api.amadeus.com/",
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/x-www-form-urlencoded'
      }
    )
  );
});
