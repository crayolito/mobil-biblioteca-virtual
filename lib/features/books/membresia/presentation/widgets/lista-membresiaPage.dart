import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ListaMembresiasPage extends StatelessWidget {
  const ListaMembresiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 8, left: 8),
            child: SizedBox(
              height: 140,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(flex: 2, child: Container()),
                      Flexible(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: const Color(0xFF393939)
                                          .withOpacity(.8)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7)),
                                  color: Colors.white.withOpacity(.90),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 58, 57, 57),
                                        offset: Offset(-5, 4),
                                        blurRadius: 4)
                                  ]),
                            ),
                          ))
                    ],
                  ),
                  Positioned(
                      top: 0,
                      bottom: 18,
                      left: 20,
                      right: 275,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/book-2.png"),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fitHeight),
                        ),
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 109,
                      right: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Membresia Audio Libros',
                            style: GoogleFonts.josefinSans(
                                color: const Color(0xFF393939),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                          Text(
                            "Precio : 40 Bs",
                            maxLines: 1,
                            style: GoogleFonts.josefinSans(
                                decoration: TextDecoration.none,
                                color: const Color(0xff50AE90),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            softWrap: true,
                          )
                        ],
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 330,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color:
                                        const Color(0xFF393939).withOpacity(.8),
                                    width: 3))),
                        child: const Center(
                          child: Icon(Icons.payment),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 8, left: 8),
            child: SizedBox(
              height: 140,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(flex: 2, child: Container()),
                      Flexible(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: const Color(0xFF393939)
                                          .withOpacity(.8)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7)),
                                  color: Colors.white.withOpacity(.90),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 58, 57, 57),
                                        offset: Offset(-5, 4),
                                        blurRadius: 4)
                                  ]),
                            ),
                          ))
                    ],
                  ),
                  Positioned(
                      top: 0,
                      bottom: 18,
                      left: 20,
                      right: 275,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/book-1.png"),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fitHeight),
                        ),
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 109,
                      right: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Membresia Traduccion Libros',
                            style: GoogleFonts.josefinSans(
                                color: const Color(0xFF393939),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                          Text(
                            "Precio : 50 Bs",
                            maxLines: 1,
                            style: GoogleFonts.josefinSans(
                                decoration: TextDecoration.none,
                                color: const Color(0xff50AE90),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            softWrap: true,
                          )
                        ],
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 330,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color:
                                        const Color(0xFF393939).withOpacity(.8),
                                    width: 3))),
                        child: const Center(
                          child: Icon(Icons.payment),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 8, left: 8),
            child: SizedBox(
              height: 140,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(flex: 2, child: Container()),
                      Flexible(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: const Color(0xFF393939)
                                          .withOpacity(.8)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7)),
                                  color: Colors.white.withOpacity(.90),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 58, 57, 57),
                                        offset: Offset(-5, 4),
                                        blurRadius: 4)
                                  ]),
                            ),
                          ))
                    ],
                  ),
                  Positioned(
                      top: 0,
                      bottom: 18,
                      left: 20,
                      right: 275,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/book-3.png"),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fitHeight),
                        ),
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 109,
                      right: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Membresia Acceso Total',
                            style: GoogleFonts.josefinSans(
                                color: const Color(0xFF393939),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                          Text(
                            "Precio : 80 Bs",
                            maxLines: 1,
                            style: GoogleFonts.josefinSans(
                                decoration: TextDecoration.none,
                                color: const Color(0xff50AE90),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            softWrap: true,
                          )
                        ],
                      )),
                  Positioned(
                      top: 40,
                      bottom: 15,
                      left: 330,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color:
                                        const Color(0xFF393939).withOpacity(.8),
                                    width: 3))),
                        child: const Center(
                          child: Icon(Icons.payment),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
