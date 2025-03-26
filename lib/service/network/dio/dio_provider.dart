import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  const baseTimeout = Duration(seconds: 30);
  final dio = Dio(
    BaseOptions(
      sendTimeout: baseTimeout,
      connectTimeout: baseTimeout,
      receiveTimeout: baseTimeout,
    ),
  );
  final inteceptors = [
    CurlLoggerDioInterceptor(printOnSuccess: false),
    PrettyDioLogger(requestBody: true, requestHeader: true),
  ];
  dio.interceptors.addAll(inteceptors);
  return dio;
}
