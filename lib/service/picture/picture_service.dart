import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchPictures({int limit = 10, int page = 1}) async {
    try {
      final response = await _dio.get(
        'https://picsum.photos/v2/list',
        queryParameters: {
          'limit': limit,
          'page': page,
        },
      );
      return response
          .data;
    } catch (e) {
      throw Exception('Failed to load pictures: $e');
    }
  }

  Future<Map<String, dynamic>> fetchPictureDetail(int id) async {
    try {
      final response = await _dio.get('https://picsum.photos/id/$id/info');
      return response.data;
    } catch (e) {
      throw Exception('Failed to load picture detail: $e');
    }
  }
}