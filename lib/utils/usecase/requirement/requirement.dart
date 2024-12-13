import 'package:birex/utils/extensions/empty_response/emptyresponse.dart';
import 'package:birex/utils/response.dart';

abstract class UseCaseRequirement {
  const UseCaseRequirement();
  AsyncApplicationResponse<EmptyResponse> check();
}
