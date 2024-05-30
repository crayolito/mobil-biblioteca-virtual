// To parse this JSON data, do
//
//     final usuarioReponse = usuarioReponseFromJson(jsonString);

import 'dart:convert';

import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';
import 'package:teslo_shop/features/books/audioLibro/infractructure/mappers/voz-mapper.dart';

Voces usuarioReponseFromJson(String str) => Voces.fromJson(json.decode(str));

String usuarioReponseToJson(Voces data) => json.encode(data.toJson());

class Voces {
  bool res;
  List<Voz> voces;

  Voces({
    required this.res,
    required this.voces,
  });

  factory Voces.fromJson(Map<String, dynamic> json) => Voces(
        res: json["res"],
        voces:
            List<Voz>.from(json["voces"].map((x) => VozMapper().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "res": res,
        "voces": List<dynamic>.from(voces.map((x) => VozMapper().toJson(x))),
      };
}
