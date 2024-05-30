import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';
import 'package:teslo_shop/features/books/categoriasLibros/presentation/widgets/categoryItem.dart';

class ContenedorListaCategorias extends StatefulWidget {
  const ContenedorListaCategorias({
    super.key,
  });

  @override
  State<ContenedorListaCategorias> createState() =>
      _ContenedorListaCategoriasState();
}

class _ContenedorListaCategoriasState extends State<ContenedorListaCategorias> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoriaBloc>(context).add(OnGetCategorias());
  }

  @override
  Widget build(BuildContext context) {
    final categoriaBloc = BlocProvider.of<CategoriaBloc>(context, listen: true);
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: categoriaBloc.state.categorias.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.8 / 3,
        ),
        itemBuilder: (context, index) {
          final categoria = categoriaBloc.state.categorias[index];
          return elementoCategoria(
            category: categoria,
          );
        },
      ),
    );
  }
}
