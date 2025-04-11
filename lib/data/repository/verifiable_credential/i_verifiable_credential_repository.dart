import 'package:birex/data/model/credential_presentation/credentialpresentationrequest.dart';
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
    required SupportedCredentialConfiguration configuration,
  });

  AsyncApplicationResponse<CredentialPresentationRequest> generatePresentation({
    required String requestUri,
  });

  AsyncApplicationResponse<void> presentCredential({
    required String uri,
    required String vpToken,
    required String state,
    required Map<String, dynamic> presentationDefinition,
  });
}
