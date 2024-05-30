import 'package:flutter/material.dart';

class LogoBook extends StatelessWidget {
  const LogoBook({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * .17,
        left: (size.width / 2) * .50,
        height: 195,
        width: 190,
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/book-1.png"),
                    fit: BoxFit.fill))));
  }
}
