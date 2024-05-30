import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';

class LogoBook extends StatelessWidget {
  final Libro libro;
  const LogoBook({super.key, required this.size, required this.libro});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * .17,
        left: (size.width / 2) * .65,
        height: 200,
        width: 150,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(libro.fotoPortada),
                    fit: BoxFit.fill))));
  }
}
