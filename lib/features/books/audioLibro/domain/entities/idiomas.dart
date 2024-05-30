import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';
import 'package:teslo_shop/features/books/audioLibro/infractructure/mappers/idioma-mapper.dart';

class Idiomas {
  bool res;
  List<Idioma> idiomas;

  Idiomas({
    required this.res,
    required this.idiomas,
  });

  factory Idiomas.fromJson(Map<String, dynamic> json) => Idiomas(
        res: json["res"],
        idiomas: List<Idioma>.from(
            json["idiomas"].map((x) => IdiomaMapper().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "res": res,
        "idiomas":
            List<dynamic>.from(idiomas.map((x) => IdiomaMapper().toJson(x))),
      };
}
