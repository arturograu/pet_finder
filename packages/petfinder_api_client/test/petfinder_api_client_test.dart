import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('PetfinderApiClient', () {
    final authUri = Uri.https(PetfinderApiClient.authority, '/v2/oauth2/token');
    final animalsUri = Uri.https(PetfinderApiClient.authority, '/v2/animals');
    const testTokenResponse = TokenResponse(
      accessToken: 'test_token',
      expiresIn: 3600,
      tokenType: 'Bearer',
    );
    final testAnimal = Animal(
      id: 1,
      organizationId: '1',
      url: 'https://api.petfinder.com/v2/animals/1',
      type: 'Dog',
      species: 'Dog',
      age: 'Adult',
      gender: 'Male',
      size: 'Large',
      coat: 'Short',
      name: 'Buddy',
      description: 'Buddy is a 5-year-old male Labrador Retriever.',
      status: 'adoptable',
      photos: [
        const Photo(
          small: 'https://api.petfinder.com/v2/animals/1/photos/small',
          medium: 'https://api.petfinder.com/v2/animals/1/photos/medium',
          large: 'https://api.petfinder.com/v2/animals/1/photos/large',
          full: 'https://api.petfinder.com/v2/animals/1/photos/full',
        ),
      ],
      publishedAt: DateTime(2025),
    );
    final testAnimalsListResponse = AnimalsListResponse(
      animals: [testAnimal],
      pagination: const Pagination(
        countPerPage: 20,
        totalCount: 1,
        currentPage: 1,
        totalPages: 1,
      ),
    );

    late MockHttpClient httpClient;
    late PetfinderApiClient petfinderApiClient;

    setUp(() {
      httpClient = MockHttpClient();
      petfinderApiClient = PetfinderApiClient(
        clientId: 'test_client_id',
        clientSecret: 'test_client_secret',
        httpClient: httpClient,
      );
    });

    test('constructor returns normally', () {
      expect(
        () => PetfinderApiClient(
          clientId: 'test_client_id',
          clientSecret: 'test_client_secret',
        ),
        returnsNormally,
      );
    });

    group('_token', () {
      test('returns token from current session if not expired', () async {
        final sut = PetfinderApiClient(
          clientId: 'test_client_id',
          clientSecret: 'test_client_secret',
          httpClient: httpClient,
          currentSession: Session.active(
            expiresIn: DateTime.now().add(const Duration(seconds: 3600)),
            accessToken: 'current_token_test',
          ),
        );
        final animalsResponse = http.Response(
          jsonEncode(testAnimalsListResponse.toJson()),
          200,
        );
        when(
          () => httpClient.get(animalsUri, headers: any(named: 'headers')),
        ).thenAnswer((_) async => animalsResponse);
        when(
          () => httpClient.post(
            authUri,
            headers: any(named: 'headers'),
            body: any(named: 'body'),
          ),
        ).thenAnswer(
          (_) async =>
              http.Response(jsonEncode(testTokenResponse.toJson()), 200),
        );

        await sut.getAnimals();

        verify(
          () => httpClient.get(
            animalsUri,
            headers: {'authorization': 'Bearer current_token_test'},
          ),
        ).called(1);
      });

      test('returns new token if current session is expired', () async {
        final sut = PetfinderApiClient(
          clientId: 'test_client_id',
          clientSecret: 'test_client_secret',
          httpClient: httpClient,
          currentSession: Session.active(
            expiresIn: DateTime.now().subtract(const Duration(seconds: 3600)),
            accessToken: 'current_token_test',
          ),
        );

        final animalsResponse = http.Response(
          jsonEncode(testAnimalsListResponse.toJson()),
          200,
        );
        final tokenResponse = http.Response(
          jsonEncode(testTokenResponse.toJson()),
          200,
        );
        when(
          () => httpClient.post(
            authUri,
            headers: any(named: 'headers'),
            body: any(named: 'body'),
          ),
        ).thenAnswer((_) async => tokenResponse);
        when(
          () => httpClient.get(animalsUri, headers: any(named: 'headers')),
        ).thenAnswer((_) async => animalsResponse);

        await sut.getAnimals();

        verify(
          () => httpClient.post(
            authUri,
            headers: any(named: 'headers'),
            body: any(named: 'body'),
          ),
        ).called(1);

        verify(
          () => httpClient.get(
            animalsUri,
            headers: {'authorization': 'Bearer test_token'},
          ),
        ).called(1);
      });
    });

    group('getAnimals', () {
      setUp(() {
        when(
          () => httpClient.post(
            authUri,
            headers: any(named: 'headers'),
            body: any(named: 'body'),
          ),
        ).thenAnswer(
          (_) async =>
              http.Response(jsonEncode(testTokenResponse.toJson()), 200),
        );
      });

      test('makes correct http request', () async {
        final response = http.Response(
          jsonEncode(testAnimalsListResponse.toJson()),
          200,
        );

        when(
          () => httpClient.get(animalsUri, headers: any(named: 'headers')),
        ).thenAnswer((_) async => response);

        await petfinderApiClient.getAnimals();

        verify(
          () => httpClient.get(
            animalsUri,
            headers: {'authorization': 'Bearer test_token'},
          ),
        ).called(1);
      });

      test('returns AnimalsListResponse on 200 response', () async {
        final response = http.Response(
          jsonEncode(testAnimalsListResponse.toJson()),
          200,
        );

        when(
          () => httpClient.get(animalsUri, headers: any(named: 'headers')),
        ).thenAnswer((_) async => response);

        final result = await petfinderApiClient.getAnimals();
        expect(result, equals(testAnimalsListResponse));
      });

      test('throws PetfinderApiException on non-200 response', () async {
        final response = http.Response('', 400);
        when(
          () => httpClient.get(animalsUri, headers: any(named: 'headers')),
        ).thenAnswer((_) async => response);

        expect(
          () => petfinderApiClient.getAnimals(),
          throwsA(isA<PetfinderApiException>()),
        );
      });
    });
  });
}
