import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teslo_shop/config/constants/const.dart';

class ButtonComprar extends StatefulWidget {
  const ButtonComprar({
    super.key,
  });

  @override
  State<ButtonComprar> createState() => _ButtonConvertirMP3State();
}

class _ButtonConvertirMP3State extends State<ButtonComprar> {
  bool mostrar = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              mostrar != mostrar;
              setState(() {});
              // context.go('/todasCategorias');
            },
            child: const Text(
              'Pay',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Courier',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
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
    );
  }
}
