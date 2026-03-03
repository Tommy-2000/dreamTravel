import 'package:dio/dio.dart';
import 'package:dreamtravel/constants/api_strings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioJsonProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: amadeusTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': amadeusJSONContentType,
        'Accept': amadeusJSONContentType,
      },
    ),
  );
});

final dioGraphQLProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: amadeusTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': amadeusGraphQLContentType,
        'Accept': amadeusGraphQLContentType,
      },
    ),
  );
});

final dioUrlEncodedProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: amadeusTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': urlEncodedContentType,
        'Accept': urlEncodedContentType,
      },
    ),
  );
});

final dioNodeProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: nodeTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': urlEncodedContentType,
        'Accept': urlEncodedContentType,
      },
    ),
  );
});

final dioNodeJSONProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: nodeTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': jsonContentType,
        'Accept': jsonContentType
      },
    ),
  );
});


final dioNodeGraphQLProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: nodeTestApi,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
      headers: {
        'Content-Type': graphQLContentType,
        'Accept': graphQLContentType,
      },
    ),
  );
});

