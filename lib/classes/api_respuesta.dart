// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.ididioma,
    required this.nombre,
    required this.estado,
  });

  int ididioma;
  String nombre;
  String estado;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        ididioma: json["ididioma"],
        nombre: json["nombre"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "ididioma": ididioma,
        "nombre": nombre,
        "estado": estado,
      };
}
