import 'package:birex/data/model/key_proof/keyproofresponse.dart';
import 'package:birex/utils/response.dart';

abstract class IVerifiableCredentialRepository {
  AsyncApplicationResponse<KeyProofResponse> generateKeyProof({
    required String accessToken,
    required String host,
    required String clientId,
    required String issuer,
    required String nonce,
  });
}
