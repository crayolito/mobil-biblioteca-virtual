import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';

class ContenedorBuscador extends StatefulWidget {
  const ContenedorBuscador({
    super.key,
  });

  @override
  State<ContenedorBuscador> createState() => _ContenedorBuscadorState();
}

class _ContenedorBuscadorState extends State<ContenedorBuscador> {
  TextEditingController textEditingController = TextEditingController();
  Timer? _debounceTimer;
  @override
  Widget build(BuildContext context) {
    final categoriaBloc = BlocProvider.of<CategoriaBloc>(context, listen: true);

    Future<void> voidQueryChanged(String query) async {
      if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 1000), () {
        if (query.isEmpty) {
          categoriaBloc.add(OnEmpityQueryLC());
          return;
        }
        categoriaBloc.add(OnChangeQueryLC(query: query));
      });
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            child: const Icon(
              Icons.search,
              size: 40,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                  controller: textEditingController,
                  onChanged: (value) {
                    voidQueryChanged(value);
                  },
                  cursorColor: const Color.fromARGB(255, 58, 57, 57),
                  decoration: const InputDecoration(
                      floatingLabelStyle: TextStyle(
                          color: Color.fromARGB(255, 58, 57, 57),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      isDense: true,
                      label: Text('Buscar ...',
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
          Container(
            alignment: Alignment.topCenter,
            width: 60,
            child: IconButton(
                onPressed: () {
                  textEditingController.text = '';
                  categoriaBloc.add(OnEmpityQueryLC());
                },
                icon: const Icon(
                  Icons.clear,
                  size: 40,
                )),
          )
        ],
      ),
    );
  }
}
