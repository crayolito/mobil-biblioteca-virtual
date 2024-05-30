import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/features/books/audioLibro/presentation/widgets/contenedor-opciones.dart';
import 'package:teslo_shop/features/books/audioLibro/presentation/widgets/contenedorTitulo-audioPage.dart';
import 'package:teslo_shop/features/books/audioLibro/presentation/widgets/titulo-traductorPage.dart';

class TraductorLibroPage extends StatefulWidget {
  const TraductorLibroPage({super.key});

  @override
  State<TraductorLibroPage> createState() => _TraductorLibroPageState();
}

class _TraductorLibroPageState extends State<TraductorLibroPage> {
  @override
  void initState() {
    super.initState();
    final initAudioLibroBloc = BlocProvider.of<AudioLibroBloc>(context);
    initAudioLibroBloc.add(const OnGetIdiomas());
  }

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
            // const SafeArea(child: TituloTraductorPage()),
            // const ContenedorTituloTraductorPage(),
 

            // OpcionesTraductorLibro()
          ],
        ),
      ),
    );
  }
}
