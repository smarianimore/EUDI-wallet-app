import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/utils/response.dart';

abstract class IVerifiableCredentialRepository {
  AsyncApplicationResponse<VerifiableCredential> generateCredentials({
    required String accessToken,
    required String uri,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
    required String subject,
  });
}
