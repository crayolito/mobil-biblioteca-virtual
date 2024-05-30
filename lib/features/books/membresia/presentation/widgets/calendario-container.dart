import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContenedorCalendario extends StatefulWidget {
  const ContenedorCalendario({
    super.key,
  });

  @override
  State<ContenedorCalendario> createState() => _ContenedorCalendarioState();
}

class _ContenedorCalendarioState extends State<ContenedorCalendario> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 60,
      width: 150,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            child: const Icon(
              Icons.calendar_month,
              size: 40,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5, right: 15),
              child: TextFormField(
                  controller: textEditingController,
                  onChanged: (value) {
                    // voidQueryChanged(value);
                  },
                  cursorColor: const Color.fromARGB(255, 58, 57, 57),
                  decoration: const InputDecoration(
                      floatingLabelStyle: TextStyle(
                          color: Color.fromARGB(255, 58, 57, 57),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      isDense: true,
                      label: Text('MM/AA',
                          style: TextStyle(
                              color: Color(0xFF393939),
                              fontSize: 19,
                              fontWeight: FontWeight.bold)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 58, 57, 57),
                              width: 2)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 58, 57, 57),
                              width: 2)))),
            ),
          ),
        ],
      ),
    );
  }
}
