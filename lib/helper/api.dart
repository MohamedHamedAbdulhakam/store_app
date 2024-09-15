import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String urL,
    @required dynamic body,
    @required String? taken,
  }) async {
    Map<String, String> headers = {};
    if (taken != null) {
      headers.addAll({'Authorization': 'Bearer $taken'});
    }
    http.Response response =
        await http.post(Uri.parse(urL), body: body, headers: headers);
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}
