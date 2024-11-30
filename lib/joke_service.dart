// import 'package:dio/dio.dart';
//
// class JokeService {
//   final Dio _dio = Dio();
//
//   Future<List<Map<String, dynamic>>> fetchJokesRaw() async {
//     try {
//       final response = await _dio.get(
//         '$_baseUrl/Programming',
//         queryParameteres: {
//           'amount': 3,
//           'type': 'single,twopart',
//           'blacklistFlags' :'nsfw,religious,political',
//         },
//       );
//       if (response.statusCode == 200) {
//         final List<dynamic> jokesJson = response.data['jokes'];
//         return jokesJson.cast<Map<String, dynamic >>();
//       } else {
//         throw Exception('Failed to load jokes');
//       }
//     } catch (e) {
//       throw Exception('Error fetching jokes: $e');
//     }
//   }
// }