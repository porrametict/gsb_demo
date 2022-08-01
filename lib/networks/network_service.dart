import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

import 'package:gsb_invest_coach/networks/network_helper.dart';
import 'package:gsb_invest_coach/networks/network_enums.dart';

class NetWorkService {
  const NetWorkService._();
  static Map<String, String> _getHeaders() => {
        'Content-Type': 'application/json',
      };

  static Future<http.Response> _createRequest({
    required RequestType requestType,
    required Uri uri,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) {
    if (requestType == RequestType.get) {
      return http.get(uri, headers: headers);
    } else if (requestType == RequestType.post) {
      return http.post(uri, body: body, headers: headers);
    } else if (requestType == RequestType.put) {
      return http.put(uri, body: body, headers: headers);
    } else {
      return http.delete(uri, body: body, headers: headers);
    }
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? queryParam,
  }) async {
    try {
      final header = _getHeaders();
      final _url = NetworkHelper.concatUrlQP(url, queryParam);

      final response = await _createRequest(
          requestType: requestType,
          uri: Uri.parse(_url),
          headers: header,
          body: body);

      return response;
    } catch (e) {
      debugPrint("Error $e");
      return null;
    }
  }
}
