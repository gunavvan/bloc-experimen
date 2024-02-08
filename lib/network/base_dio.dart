
import 'package:dio/dio.dart';

import 'cache_logging.dart';
import 'logging_interceptor.dart';

mixin BaseDio {
  Dio get dio => _dio();

  Response? response;

  Dio _dio() {
    final options = BaseOptions(
        connectTimeout: const Duration(minutes: 5),
        receiveTimeout: const Duration(minutes: 5),
        // contentType: "application/json;charset=utf-8",
        );

    var dio = Dio(options);

    dio.interceptors
      ..add(InterceptorsWrapper(
        onRequest: (options, handler) {
          print('send request：path:${options.path}，baseURL:${options.baseUrl}');
          return handler.next(options);
        },
        onError: (error, handler) {
          //print(error);
          // Assume 401 stands for token expired
          if (error.response?.statusCode == 401) {
            var options = error.response!.requestOptions;

            return;
          }
          return handler.next(error);
        },
      ))
      ..add(CacheInterceptor())
      //chucker dio interceptor
      ..add(LoggingInterceptors(dio));

    return dio;
  }
}
