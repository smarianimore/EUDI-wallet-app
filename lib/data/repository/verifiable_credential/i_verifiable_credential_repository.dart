import 'package:birex/data/model/model.dart';
import 'package:birex/utils/utils.dart';

abstract class IVerifiableCredentialRepository {
  AsyncApplicationResponse<VerifiableCredential> generateCredentials({
    required String accessToken,
    required String uri,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
    required String subject,
    required SupportedCredentialDisplayInformation display,
  });
}
