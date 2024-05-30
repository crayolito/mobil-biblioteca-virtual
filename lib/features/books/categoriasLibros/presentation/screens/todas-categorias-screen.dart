import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/shared/widgets/widgets.dart';
import 'package:teslo_shop/features/books/categoriasLibros/presentation/widgets/widgets.dart';

class CategoriasLibrosScreen extends StatelessWidget {
  const CategoriasLibrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: NavbarPersonalize(
        iconOpcion1: Icons.person,
        onPressed1: () {
          context.go('/espacioPersonal');
        },
        iconOpcion2: Icons.search,
        onPressed2: () {
          context.go('/buscadorGeneral');
        },
        iconOpcion3: Icons.logout_outlined,
        onPressed3: () {
          context.go('/home');
        },
      ),
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
            SizedBox(
              height: size.height * 0.08,
            ),
            const TitlePresentation(),
            const SizedBox(
              height: 40,
            ),
            const ContainerPresentation(),
            const ContenedorListaCategorias()
          ],
        ),
      ),
    );
  }
}
