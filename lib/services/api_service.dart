//lib/services/api_service.dart (STEP 2 — Create API SERVICE)

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.32.223/hajj_api/',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  Future<Response> getData(String endpoint) async {
    try {
      print("🌐 Request URL: ${dio.options.baseUrl}$endpoint");

      final response = await dio.get(endpoint);

      print("✅ STATUS CODE: ${response.statusCode}");
      print("📦 RAW RESPONSE: ${response.data}");
      print("📦 TYPE: ${response.data.runtimeType}");

      return response;
    } on DioException catch (e) {
      print("❌ DIO ERROR: ${e.message}");
      print("❌ RESPONSE: ${e.response?.data}");
      print("❌ TYPE: ${e.type}");

      rethrow;
    } catch (e) {
      print("❌ UNKNOWN ERROR: $e");
      rethrow;
    }
  }
}
