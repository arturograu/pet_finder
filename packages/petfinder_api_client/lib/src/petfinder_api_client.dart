import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';

class PetfinderApiException implements Exception {
  const PetfinderApiException(this.message);

  final String message;
}

/// {@template petfinder_api_client}
/// A Dart API Client for the Petfinder API.
/// {@endtemplate}
class PetfinderApiClient {
  /// {@macro petfinder_api_client}
  PetfinderApiClient({
    required String clientId,
    required String clientSecret,
    http.Client? httpClient,
    Session? currentSession,
  }) : _clientId = clientId,
       _clientSecret = clientSecret,
       _currentSession = currentSession ?? const Session.empty(),
       _httpClient = httpClient ?? http.Client();

  @visibleForTesting
  static const authority = 'www.petfinder.com';

  final String _clientId;
  final String _clientSecret;
  final http.Client _httpClient;

  Session _currentSession;

  Future<String> get _token async {
    final currentSession = _currentSession;
    if (currentSession is ActiveSession && !currentSession.isExpired) {
      return currentSession.accessToken;
    }

    final tokenResponse = await _requestNewToken();
    _currentSession = ActiveSession(
      expiresIn: DateTime.now().add(Duration(seconds: tokenResponse.expiresIn)),
      accessToken: tokenResponse.accessToken,
    );

    return tokenResponse.accessToken;
  }

  /// Returns one "page" of details (defaulting to the first 20 results) on a
  /// group of animals based on criteria given in the parameters.
  ///
  /// REST call: `GET /animals`
  Future<AnimalsListResponse> getAnimals() async {
    try {
      final uri = Uri.https(authority, '/developers/v2/animals');
      final responseBody = await _get(uri);

      return AnimalsListResponse.fromJson(responseBody);
    } catch (e) {
      throw PetfinderApiException(e.toString());
    }
  }

  Future<Map<String, dynamic>> _get(Uri uri) async {
    http.Response response;
    String token;

    try {
      token = await _token;
    } catch (_) {
      throw Exception('Failed to retrieve token');
    }

    try {
      response = await _httpClient.get(
        uri,
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
      );
    } catch (_) {
      throw Exception('Failed to make http request');
    }

    if (response.statusCode != HttpStatus.ok) {
      throw Exception(
        'Http request failed with status code ${response.statusCode}',
      );
    }

    try {
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (_) {
      throw Exception('Failed to decode json');
    }
  }

  Future<TokenResponse> _requestNewToken() async {
    final response = await _httpClient.post(
      Uri.https(authority, '/developers/v2/oauth2/token'),
      body: {
        'grant_type': 'client_credentials',
        'client_id': _clientId,
        'client_secret': _clientSecret,
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception(
        'Http request failed with status code ${response.statusCode}',
      );
    }

    final responseBody = json.decode(response.body) as Map<String, dynamic>;
    return TokenResponse.fromJson(responseBody);
  }
}

extension on ActiveSession {
  bool get isExpired => DateTime.now().isAfter(expiresIn);
}
