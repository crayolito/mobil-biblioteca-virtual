import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';

class BarSearch extends StatefulWidget {
  final String? label;
  final String? hint;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const BarSearch({
    super.key,
    this.label = 'Buscar ...',
    this.hint,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  State<BarSearch> createState() => _BarSearchState();
}

class _BarSearchState extends State<BarSearch> {
  TextEditingController textEditingController = TextEditingController();
  Timer? _debounceTimer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const borderRadius = Radius.circular(7);
    final searchBloc = BlocProvider.of<SearchBloc>(context, listen: true);

    Future<void> voidQueryChanged(String query) async {
      if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 1000), () {
        if (query.isEmpty) {
          searchBloc.add(OnSearchReset());
          return;
        }
        searchBloc.add(OnSearchValueChanged(query));
      });
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.90,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.7),
          borderRadius: const BorderRadius.only(
              topLeft: borderRadius,
              topRight: borderRadius,
              bottomLeft: borderRadius,
              bottomRight: borderRadius),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFD3D3D3).withOpacity(.84),
              blurRadius: 10,
              // offset: const Offset(0, 5)
            )
          ]),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: widget.keyboardType,
        onChanged: (value) {
          voidQueryChanged(value);
        },
        style: const TextStyle(fontSize: 20, color: Colors.black54),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 58, 57, 57)),
            ),
            floatingLabelStyle: const TextStyle(
                color: Color.fromARGB(255, 58, 57, 57),
                fontWeight: FontWeight.bold,
                fontSize: 18),
            isDense: true,
            label: Text('Buscar ...',
                style: TextStyle(
                    color: Color(0xFF393939),
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 58, 57, 57),
              size: 30,
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  textEditingController.text = '';
                  searchBloc.add(OnSearchReset());
                },
                icon: const Icon(Icons.clear,
                    size: 30, color: Color.fromARGB(255, 58, 57, 57)))),
      ),
    );
  }
}
