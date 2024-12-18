import 'package:birex/data/model/key_proof/keyproofresponse.dart';
import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/utils/response.dart';

abstract class IVerifiableCredentialRepository {
  AsyncApplicationResponse<KeyProofResponse> generateKeyProof({
    required String accessToken,
    required String host,
    required String clientId,
    required String issuer,
    required String nonce,
  });

  AsyncApplicationResponse<VerifiableCredentialResponse> generateCredentials({
    required String accessToken,
    required String uri,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
  });
}
