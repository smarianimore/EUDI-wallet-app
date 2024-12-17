import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/logger/custom_logger.dart';
import 'package:birex/utils/response.dart';
import 'package:dio/dio.dart' as dio;

mixin RepositoryResponseHandler {
  AsyncApplicationResponse<T> handleResponse<T>({
    required Future<dio.Response<dynamic>> Function() request,
    required T Function(Map<String, dynamic> value) payloadMapper,
    Map<String, dynamic> Function(dynamic data)? responseDataConverter,
  }) async {
    try {
      final response = await request();
      if (response.statusCode == 200) {
        final converted = responseDataConverter?.call(response.data) ?? response.data as Map<String, dynamic>;
        final data = payloadMapper(converted);
        final result = Responses.success<T, ApplicationError>(data);
        return result;
      } else {
        final message = response.data is String? ? response.data as String? : response.statusMessage;
        final result = Responses.failure<T, ApplicationError>([ApplicationError.generic(message: message)]);
        return result;
      }
    } on dio.DioException catch (e) {
      final message = e.response?.statusMessage ?? e.message;
      ApplicationLogger.instance.logApplicationError(message ?? 'ERRORE');
      final response = Responses.failure<T, ApplicationError>([ApplicationError.generic(message: message)]);
      return Future.value(response);
    } catch (e) {
      ApplicationLogger.instance.logApplicationError(e.toString());
      final response = Responses.failure<T, ApplicationError>([ApplicationError.generic()]);
      return Future.value(response);
    }
  }
}
