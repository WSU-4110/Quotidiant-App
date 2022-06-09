import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quotidiant_app/models/random_year.dart';

Future<RandomYearModel> getRandomYearFact() async {
  final response =
      await http.get(Uri.parse("http://numbersapi.com/random/year?json"));

  if (response.statusCode == 200) {
    return RandomYearModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('failed to load random year fact!');
  }
}
