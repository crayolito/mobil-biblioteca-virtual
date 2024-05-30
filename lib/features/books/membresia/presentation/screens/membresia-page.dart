import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/button-pagar.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/contenedorTitulo-membresiaPage.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/lista-membresiaPage.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/titulo-membresiaPage.dart';

class MembresiaPage extends StatelessWidget {
  const MembresiaPage({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(child: TituloMembresiaPage()),
            ContenedorTituloMembresiaPage(),
            SizedBox(
              height: 15,
            ),
            ListaMembresiasPage(),
            ButtonPay()
          ],
        ),
      ),
    );
  }
}
