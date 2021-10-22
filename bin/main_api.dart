import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:app_http/classes/api_respuesta.dart';

void main(List<String> arguments) {
  final url = Uri.parse('http://localhost:3000/api/auth/idioma/');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    for (var i = 0; i <= respuesta.length; i++) {
      print(respuesta[i].nombre);
    }
  });
}
