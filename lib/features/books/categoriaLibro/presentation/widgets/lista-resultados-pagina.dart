import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/details/book/presentation/screens/categories-deatils-book.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultadoBusquedaLibros extends StatefulWidget {
  final Color colorTituloLibro;

  const ResultadoBusquedaLibros({
    super.key,
    required this.colorTituloLibro,
  });

  @override
  State<ResultadoBusquedaLibros> createState() =>
      _ResultadoBusquedaLibrosState();
}

class _ResultadoBusquedaLibrosState extends State<ResultadoBusquedaLibros> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoriaBloc = BlocProvider.of<CategoriaBloc>(context, listen: true);

    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: categoriaBloc.state.librosCategoria.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          var size = MediaQuery.of(context).size;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final Libro libro =
                      categoriaBloc.state.librosCategoria[index];
                  return GestureDetector(
                    onTap: () {
                      showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return FadeInUp(
                              delay: const Duration(milliseconds: 200),
                              child: DetailsScreen(size: size, libro: libro));
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: NetworkImage(libro.fotoPortada),
                            fit: BoxFit.fitHeight,
                          ))),
                        ),
                        Container(
                          child: Text(
                            libro.nombre,
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                              color: widget.colorTituloLibro,
                              fontSize: 18,
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
