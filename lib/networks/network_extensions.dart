import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

extension HttpResponseExtension on http.Response {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }

  Map<String, dynamic> asMap() {
    return convert.jsonDecode(body) as Map<String, dynamic>;
  }
}
