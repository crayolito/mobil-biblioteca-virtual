import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';

class TituloPresentacion extends StatelessWidget {
  const TituloPresentacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final categoriaBloc = BlocProvider.of<CategoriaBloc>(context, listen: true);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: size.height * .20,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                  onTap: () {
                    context.go('/todasCategorias');
                  },
                ),
              ),
              const SizedBox(width: 28),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'CATEGORY',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      "${categoriaBloc.state.categoriaSelect!.nombre}",
                      softWrap: true,
                      textAlign: TextAlign.end,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
