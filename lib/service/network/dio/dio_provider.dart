import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:birex/service/routing/router.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();
  final navKey = ref.watch(navigatorKeyProvider);
  final alice = Alice(
    configuration: AliceConfiguration(
      navigatorKey: navKey,
      showNotification: false,
    ),
  );
  final inteceptors = [
    CurlLoggerDioInterceptor(printOnSuccess: false),
    PrettyDioLogger(requestBody: true, requestHeader: true),
    AliceI,
  ];
  dio.interceptors.addAll(inteceptors);
  return dio;
}
