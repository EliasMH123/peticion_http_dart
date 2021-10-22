import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:app_http/classes/api_request.dart';

void main(List<String> arguments) {
  final url = Uri.parse('https://rickandmortyapi.com/api/character/1');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    for (var i = 0; i <= respuesta.episode.length; i++) {
      print(respuesta.episode[i]);
    }
  });
}
