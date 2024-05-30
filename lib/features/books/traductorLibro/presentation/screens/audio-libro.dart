import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/contenedor-opciones.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/contenedorTitulo-audioPage.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/titulo-audiPage.dart';

class AudioLibroPage extends StatefulWidget {
  const AudioLibroPage({super.key});

  @override
  State<AudioLibroPage> createState() => _AudioLibroPageState();
}

class _AudioLibroPageState extends State<AudioLibroPage> {
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
            SafeArea(child: TituloAudioPage()),
            ContenedorTituloPage(),
            BlocBuilder<AudioLibroBloc, AudioLibroState>(
                builder: (context, state) {
              if (state.idiomas.isEmpty) {
                return Expanded(
                  child: Container(
                      margin: EdgeInsets.all(100),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/espera.png")))),
                );
              }

              return OpcionesAudioLibro();
            })
         
          ],
        ),
      ),
    );
  }
}
