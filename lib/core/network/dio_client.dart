import 'package:dio/dio.dart';
import 'package:travilo/core/utils/pref_helper.dart';

class DioClient {
  static late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://travello.runasp.net/',
        receiveDataWhenStatusError: true,
        headers: {"Content-Type": "application/json"},
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = PrefHelper.getToken();

          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
      ),
    );
  }

  static Future<Response> postData({
  required String endPoint,
  Map<String, dynamic>? data,
}) async {
  return await dio.post(endPoint, data: data);
}
}
