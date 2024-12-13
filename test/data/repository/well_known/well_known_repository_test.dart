import 'package:birex/data/repository/well_known/impl/well_known_repository.dart';
import 'package:birex/service/network/dio/dio_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        dioProvider,
      ],
    );
  });

  tearDown(() => container.dispose());

  group('Well known repository test', () {
    test('Test getAuthorizationServerConfiguration', () async {
      final repository = container.read(wellKnownRepositoryProvider);
      final response = await repository.getAuthorizationServerConfiguration('https://crif.azurewebsites.net');
      final payload = response.payload;
      expect(payload, isNotNull);
      if (payload == null) return;
      expect(payload.issuer, 'https://crif.azurewebsites.net');
    });

    test('Test getOpenIDConfiguration', () async {
      final repository = container.read(wellKnownRepositoryProvider);
      final response = await repository.getOpenIDConfiguration('https://crif.azurewebsites.net');
      final payload = response.payload;
      expect(payload, isNotNull);
      if (payload == null) return;
      expect(payload.issuer, 'https://crif.azurewebsites.net');
    });

    test('Test getCredentialIssuerConfiguration', () async {
      final repository = container.read(wellKnownRepositoryProvider);
      final response = await repository.getCredentialIssuerConfiguration('https://crif.azurewebsites.net');
      final payload = response.payload;
      expect(payload, isNotNull);
      if (payload == null) return;
      expect(payload.credentialIssuer, 'https://crif.azurewebsites.net');
    });
  });
}
