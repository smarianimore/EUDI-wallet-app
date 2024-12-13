import 'package:birex/utils/extensions/empty_response/emptyresponse.dart';
import 'package:birex/utils/response.dart';

abstract class UseCaseValidator<T> {
  AsyncApplicationResponse<EmptyResponse> validate(T input);
}
