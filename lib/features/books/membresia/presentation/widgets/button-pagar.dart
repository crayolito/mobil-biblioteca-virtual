import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:teslo_shop/config/constants/const.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/Bbutton-comprar.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/calendario-container.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/clave-container.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/email-container.dart';
import 'package:teslo_shop/features/books/membresia/presentation/widgets/tarejeta-container.dart';

class ButtonPay extends StatefulWidget {
  const ButtonPay({
    super.key,
  });

  @override
  State<ButtonPay> createState() => _ButtonPayState();
}

class _ButtonPayState extends State<ButtonPay> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
          showAdaptiveDialog(
            context: context,
            builder: (context) {
              return FadeInUp(
                  delay: Duration(milliseconds: 200),
                  child: Stack(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SafeArea(
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 20),
                                      alignment: Alignment.topCenter,
                                      height: size.height * .30,
                                      width: 50,
                                      child: GestureDetector(
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Container(
                                height: size.height * 0.66,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/bg.png"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40))),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      child: ContenedorEmail(),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      child: ContenedorTarejeta(),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      child: Row(
                                        children: [
                                          ContenedorCalendario(),
                                          ContenedorClave()
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ButtonComprar()
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          );
        },
        child: const Text(
          'Pagar',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Courier',
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
    );
  }
}
