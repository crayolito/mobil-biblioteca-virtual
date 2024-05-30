import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';

class ContenedorVoces extends StatefulWidget {
  final List<Voz> voces;
  const ContenedorVoces({
    super.key,
    required this.voces,
  });

  @override
  State<ContenedorVoces> createState() => _ContenedorVocesState();
}

class _ContenedorVocesState extends State<ContenedorVoces> {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.voces.isEmpty ? null : widget.voces[0].nombre;
  }

  @override
  Widget build(BuildContext context) {
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
          border: Border.all(
              color: const Color.fromARGB(255, 58, 57, 57), width: 2),
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
            value: dropdownValue,
            onChanged: widget.voces.isEmpty
                ? null
                : (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
            items: widget.voces.isEmpty
                ? null
                : widget.voces.map<DropdownMenuItem<String>>((Voz voz) {
                    return DropdownMenuItem<String>(
                      value: voz.nombre,
                      child: Text(voz.nombre),
                    );
                  }).toList()));
  }
}
