import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';

class ContenedorNoSeQ extends StatefulWidget {
  const ContenedorNoSeQ({
    super.key,
  });

  @override
  State<ContenedorNoSeQ> createState() => _ContenedorNoSeQState();
}

class _ContenedorNoSeQState extends State<ContenedorNoSeQ> {
  TextEditingController textEditingController = TextEditingController();
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    final audioLibroBloc = BlocProvider.of<AudioLibroBloc>(context);
    setState(() {
      // dropdownValue =
    });
  }

  @override
  Widget build(BuildContext context) {
    final audioLibroBloc =
        BlocProvider.of<AudioLibroBloc>(context, listen: true);

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
        icon: Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF393939),
          size: 50,
        ),
        style: TextStyle(
            color: Color(0xFF393939),
            fontSize: 20,
            fontWeight: FontWeight.bold),
        value: null,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: null,
      ),
    );
  }
}

// audioLibroBloc.state.voces.map<DropdownMenuItem<String>>((Voz voz) {
//           return DropdownMenuItem<String>(
//             value: voz.nombre,
//             child: Text(voz.nombre),
//           );
//         }).toList()
