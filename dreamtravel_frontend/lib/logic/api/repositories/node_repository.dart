//
//
// import 'package:dreamtravel/logic/api/node_provider.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../models/node/node_response.dart';
//
// final nodeRepositoryProvider = Provider<NodeRepository>((ref) {
//   return NodeRepository(ref.read(nodeProvider));
// });
//
//
// class NodeRepository {
//
//   final NodeProvider nodeProvider;
//
//   NodeRepository(this.nodeProvider);
//
//   Future<NodeResponse> getNodeStatus() async {
//     try {
//       final nodeResponse = await nodeProvider.getRequest("/status/nodeStatus");
//       return NodeResponse.fromJson(nodeResponse.data);
//     } catch (e) {
//       throw Exception("Failed to GET nodeResponse: $e");
//     }
//   }
//
// }
//
