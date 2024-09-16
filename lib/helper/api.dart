import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? taken}) async {
    Map<String, String> headers = {};
    if (taken != null) {
      headers.addAll({'Authorization': 'Bearer $taken'});
      http.Response response = await http.get(Uri.parse(url), headers: headers);
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
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception(
            "there was a problem with status code ${response.statusCode}with body ${response.body}");
      }
    }

    Future<dynamic> put({
      required String urL,
      @required dynamic body,
      @required String? taken,
    }) async {
      Map<String, String> headers = {};
      headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
      if (taken != null) {
        headers.addAll({'Authorization': 'Bearer $taken'});
      }
      http.Response response =
          await http.post(Uri.parse(urL), body: body, headers: headers);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception(
            "there was a problem with status code ${response.statusCode}with body ${response.body}");
      }
    }
  }
}
