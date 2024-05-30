import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/config/constants/const.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/bookAudioFake.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/contenedor-idiomas.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/widgets/contenedor-voces.dart';

class OpcionesAudioLibro extends StatefulWidget {
  const OpcionesAudioLibro({
    super.key,
  });

  @override
  State<OpcionesAudioLibro> createState() => _OpcionesAudioLibroState();
}

class _OpcionesAudioLibroState extends State<OpcionesAudioLibro> {
  bool mostratResultado = false;
  bool mostrarButton = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void cambiarTerminoCargar() async {
      // Espera 10 segundos antes de continuar
      await Future.delayed(Duration(seconds: 10));

      // Cambia el valor de terminoCargar
      setState(() {
        mostratResultado = !mostratResultado;
      });
    }

    return Expanded(
        child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  child: Text(
                    'Idioma ',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontFamily: 'Courier',
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                ContenedorIdiomas(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  child: Text(
                    'Voz',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontFamily: 'Courier',
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                BlocBuilder<AudioLibroBloc, AudioLibroState>(
                  builder: (context, state) {
                    if (state.voces == []) {
                      return const ContenedorVoces(voces: []);
                    }
                    return ContenedorVoces(voces: state.voces);
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                mostrarButton
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 100),
                        height: 60,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: kBlackColor.withOpacity(.80),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: GestureDetector(
                          onTap: () {
                            mostrarButton = !mostrarButton;
                            setState(() {});
                            cambiarTerminoCargar();
                          },
                          child: const Text(
                            'Convertir',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Courier',
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 30,
                ),
                mostrarButton
                    ? Container()
                    : mostratResultado
                        ? Center(child: LibroAudioFake())
                        : Center(
                            child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            alignment: Alignment.topCenter,
                            child: LinearProgressIndicator(
                              color: Color.fromARGB(255, 199, 199, 199),
                              minHeight: 10,
                              backgroundColor: kBlackColor.withOpacity(.80),
                            ),
                          )),
              ],
            )));
  }
}
