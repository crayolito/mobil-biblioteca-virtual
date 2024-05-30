import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/config/constants/const.dart';

class ButtonTraducir extends StatefulWidget {
  const ButtonTraducir({
    super.key,
  });

  @override
  State<ButtonTraducir> createState() => _ButtonTraducirState();
}

class _ButtonTraducirState extends State<ButtonTraducir> {
  @override
  Widget build(BuildContext context) {
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
        },
        child: const Text(
          'Ingresar',
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
