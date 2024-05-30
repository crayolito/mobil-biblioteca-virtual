import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/config/bloc/libro/libro_bloc.dart';
import 'package:teslo_shop/config/constants/const.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/details/book/presentation/screens/categories-deatils-book.dart';

class BuscadorGeneralPage extends StatefulWidget {
  const BuscadorGeneralPage({super.key});

  @override
  State<BuscadorGeneralPage> createState() => _BuscadorGeneralPageState();
}

class _BuscadorGeneralPageState extends State<BuscadorGeneralPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<LibroBloc>(context).add(OnGetTodosLibros());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.go('/todasCategorias');
          },
          backgroundColor: Colors.white.withOpacity(.70),
          child: const Icon(
            Icons.arrow_back,
            color: kBlackColor,
            size: 35,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/biblioteca3.jpg'),
                    fit: BoxFit.fill)),
            child: const Column(
              children: [
                SafeArea(child: ContenedorBuscadorGeneral()),
                ResultadoBusquedaGeneral(
                  colorTituloLibro: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}

class ContenedorBuscadorGeneral extends StatefulWidget {
  const ContenedorBuscadorGeneral({
    super.key,
  });

  @override
  State<ContenedorBuscadorGeneral> createState() =>
      _ContenedorBuscadorGeneralState();
}

class _ContenedorBuscadorGeneralState extends State<ContenedorBuscadorGeneral> {
  TextEditingController textEditingController = TextEditingController();
  Timer? _debounceTimer;
  @override
  Widget build(BuildContext context) {
    final libroBloc = BlocProvider.of<LibroBloc>(context, listen: true);

    Future<void> voidQueryChanged(String query) async {
      if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 1000), () {
        if (query.isEmpty) {
          libroBloc.add(OnEmpityQuery());
          return;
        }
        libroBloc.add(OnChangeQuery(query: query));
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
              size: 10,
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
                  libroBloc.add(OnEmpityQuery());
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

class ResultadoBusquedaGeneral extends StatefulWidget {
  final Color colorTituloLibro;

  const ResultadoBusquedaGeneral({
    super.key,
    required this.colorTituloLibro,
  });

  @override
  State<ResultadoBusquedaGeneral> createState() =>
      _ResultadoBusquedaGeneralState();
}

class _ResultadoBusquedaGeneralState extends State<ResultadoBusquedaGeneral> {
  @override
  Widget build(BuildContext context) {
    final libroBloc = BlocProvider.of<LibroBloc>(context, listen: true);

    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: libroBloc.state.queryLibros.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          var size = MediaQuery.of(context).size;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final Libro libro = libroBloc.state.queryLibros[index];
                  return GestureDetector(
                    onTap: () {
                      showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return FadeInUp(
                              delay: const Duration(milliseconds: 200),
                              child: DetailsScreen(size: size, libro: libro));
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: NetworkImage(libro.fotoPortada),
                            fit: BoxFit.fitHeight,
                          ))),
                        ),
                        Container(
                          child: Text(
                            libro.nombre,
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                              color: widget.colorTituloLibro,
                              fontSize: 18,
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
