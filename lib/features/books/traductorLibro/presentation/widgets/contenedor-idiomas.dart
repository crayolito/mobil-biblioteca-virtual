import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';

class ContenedorIdiomas extends StatefulWidget {
  const ContenedorIdiomas({
    super.key,
  });

  @override
  State<ContenedorIdiomas> createState() => _ContenedorIdiomasState();
}

class _ContenedorIdiomasState extends State<ContenedorIdiomas> {
  TextEditingController textEditingController = TextEditingController();
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    final audioLibroBloc = BlocProvider.of<AudioLibroBloc>(context);
    audioLibroBloc.add(OnGetVoces(audioLibroBloc.state.idiomas[0].id));
    setState(() {
      dropdownValue = audioLibroBloc.state.idiomas[0].nombre;
    });
  }

  @override
  Widget build(BuildContext context) {
    final audioLibroBloc = BlocProvider.of<AudioLibroBloc>(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.70),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 30,
              color: const Color(0xFFD3D3D3).withOpacity(.84))
        ],
        border:
            Border.all(color: const Color.fromARGB(255, 58, 57, 57), width: 2),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF393939),
          size: 50,
        ),
        style: const TextStyle(
            color: Color(0xFF393939),
            fontSize: 20,
            fontWeight: FontWeight.bold),
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue;
            int codigoNewIdioma = audioLibroBloc.state.idiomas
                .firstWhere((element) => element.nombre == dropdownValue)
                .id;
            audioLibroBloc.add(OnCleanVoces());
            audioLibroBloc.add(OnGetVoces(codigoNewIdioma));
          });
        },
        items: audioLibroBloc.state.idiomas.isEmpty
            ? null
            : audioLibroBloc.state.idiomas
                .map<DropdownMenuItem<String>>((Idioma idioma) {
                return DropdownMenuItem<String>(
                  value: idioma.nombre,
                  child: Text(idioma.nombre),
                );
              }).toList(),
      ),
    );
  }
}
