import 'dart:io';

import 'package:quotidiant_app/models/Random_fact_model.dart'
import 'package:quotidiant_app/services/Status_service.dart'
import 'package:http/http.dart' as http;

class CatFactServices {
  static Future<Object> getCatFact() async {
    try {
      var url = Uri.parse(BASE_URL);
      var response = await http.get(url);
      if (200 == response.statusCode) {
        return Success(response: welcomeFromJson(response.body));
      }
      return Failure(code: 100, errorResponse: 'Invalid Response');
    } on HttpException {
      return Failure(code: 101, errorResponse: 'No Internet');
    } on FormatException {
      return Failure(code: 102, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: 103, errorResponse: e.toString());
    }
  }
}