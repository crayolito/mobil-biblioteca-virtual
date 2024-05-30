import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:share_plus/share_plus.dart';
import 'package:teslo_shop/features/books/details/book/presentation/widgets/pagina-pdf.dart';

class OptionsBook extends StatelessWidget {
  final Libro libro;
  const OptionsBook({super.key, required this.libro});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 30,
                    ),
                    onTap: () {
                      Share.share(libro.descripcion);
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.document_scanner,
                      color: Colors.black,
                      size: 30,
                    ),
                    onTap: () {
                      print('PDF');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaginaPDF(libro: libro)));
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 70,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    onTap: () {
                      context.go('/paqueteMembresia');
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.download,
                      color: Colors.black,
                      size: 30,
                    ),
                    onTap: () {
                      context.go('/paqueteMembresia');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
