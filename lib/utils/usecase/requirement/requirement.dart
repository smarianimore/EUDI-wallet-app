import 'package:keyfull/utils/extensions/empty_response/emptyresponse.dart';
import 'package:keyfull/utils/response.dart';

abstract class UseCaseRequirement {
  const UseCaseRequirement();
  AsyncApplicationResponse<EmptyResponse> check();
}
