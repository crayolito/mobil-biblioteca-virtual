import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';

class elementoCategoria extends StatefulWidget {
  final Categoria category;
  const elementoCategoria({super.key, required this.category});

  @override
  State<elementoCategoria> createState() => _elementoCategoriaState();
}

class _elementoCategoriaState extends State<elementoCategoria> {
  double elevation = 18.0;

  void navigateToSpecificSearchScreen() {
    final categoriaBloc = BlocProvider.of<CategoriaBloc>(context);
    categoriaBloc
        .add(OnChangeCategoriaSelect(categoriaSelect: widget.category));

    context.go('/categoriaEspecifica');
    setState(() {
      elevation = 4.0;
    });

    Future.delayed(const Duration(milliseconds: 100)).then((_) {
      setState(() {
        elevation = 18.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: MediaQuery.of(context).size.height * 0.09 * 1.3),
      child: GestureDetector(
        onTap: navigateToSpecificSearchScreen,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          elevation: elevation,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.network(
                    widget.category.descripcion!,
                    scale: 1.0,
                  ),
                ),
                const SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    widget.category.nombre,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
