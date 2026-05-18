//1. CORE API SETUP (DIO CLIENT)

//lib/core/network/dio_client.dart

import 'package:dio/dio.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://192.168.32.223/hajj_api/",
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> get(String path) async {
    return await dio.get(path);
  }
}
