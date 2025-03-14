import 'package:birex/utils/env.dart';
import 'package:dio/dio.dart';

class CrifAPIKeyInterceptor extends Interceptor {
  CrifAPIKeyInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.uri.host == EnvVariables.crifHost) {
      options.headers['X-API-KEY'] = EnvVariables.crifApiKey;
    }
    handler.next(options);
  }
}
