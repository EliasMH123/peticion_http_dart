import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:app_http/classes/data_respuesta.dart';

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    for (var i = 0; i <= respuesta.data.length; i++) {
      print(respuesta.data[i].lastName);
    }
  });
}
