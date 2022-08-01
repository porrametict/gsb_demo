import 'package:http/http.dart' as http;

import 'package:gsb_invest_coach/networks/network_enums.dart';
import 'package:gsb_invest_coach/networks/network_typedef.dart';
import 'package:gsb_invest_coach/networks/network_extensions.dart';

class NetworkHelper {
  const NetworkHelper._();

  static String concatUrlQP(String url, Map<String, String>? queryParameters) {
    if (url.isEmpty) return url;
    if (queryParameters == null || queryParameters.isEmpty) {
      return url;
    }
    final StringBuffer stringBuffer = StringBuffer("$url?");
    queryParameters.forEach((key, value) {
      if (value.trim() == '') return;
      if (value.contains(' ')) throw Exception("Invalid Input Exception");

      stringBuffer.write('$key=$value&');
    });

    final result = stringBuffer.toString();
    return result.substring(0, result.length - 1);
  }

  static handleResponse(
      {required http.Response? response,
      required NetworkCallBack onSuccessCallback,
      required NetworkOnFailureCallback onFailureCallback}) {
    try {
      if (response == null || response.body.isEmpty) {
        return onFailureCallback(
            NetworkResponseErrorType.responseEmpty, null, response);
      }

      if (response.ok) {
        return onSuccessCallback(response.asMap());
      } else {
        return onFailureCallback(
            NetworkResponseErrorType.didNotSuccess, null, response);
      }
    } catch (e) {
      return onFailureCallback(
          NetworkResponseErrorType.exception, 'Exception $e', null);
    }
  }
}
