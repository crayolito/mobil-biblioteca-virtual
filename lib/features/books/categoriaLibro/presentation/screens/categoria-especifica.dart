import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/categoriaLibro/presentation/widgets/widgets.dart';

class CategoriaEspecifica extends StatelessWidget {
  const CategoriaEspecifica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/categorias.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(child: TituloPresentacion()),
            ContenedorBuscador(),
            ResultadoBusquedaLibros(
              colorTituloLibro: Color(0xFF393939),
            )
          ],
        ),
      ),
    );
  }
}
