import 'package:flutter/material.dart';
import 'package:teslo_shop/config/constants/const.dart';
import 'package:teslo_shop/features/books/audioLibro/presentation/widgets/contenedor-idiomas.dart';

class OpcionesTraductorLibro extends StatefulWidget {
  const OpcionesTraductorLibro({
    super.key,
  });

  @override
  State<OpcionesTraductorLibro> createState() => _OpcionesTraductorLibroState();
}

class _OpcionesTraductorLibroState extends State<OpcionesTraductorLibro> {
  bool mostrar = true;

  @override
  Widget build(BuildContext context) {
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
            width: double.infinity,
            height: 300,
            child: Center(
              child: Container(
                height: 250,
                width: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/book-1.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Text(
              'Idioma ',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontFamily: 'Courier',
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          ),
          const ContenedorNoSe2(),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100),
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kBlackColor.withOpacity(.80),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: GestureDetector(
              onTap: () {
                // context.go('/todasCategorias');
                mostrar = !mostrar;
                setState(() {});
              },
              child: const Text(
                'Traducir',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Courier',
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          mostrar
              ? Container()
              : Expanded(
                  child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.topCenter,
                  child: LinearProgressIndicator(
                    color: Color.fromARGB(255, 199, 199, 199),
                    minHeight: 10,
                    backgroundColor: kBlackColor.withOpacity(.80),
                  ),
                ))
        ],
      ),
    ));
  }
}
