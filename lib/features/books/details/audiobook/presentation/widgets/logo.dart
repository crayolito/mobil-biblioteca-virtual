import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/screens/details-audio-book.dart';

class LogoBook extends StatelessWidget {
  const LogoBook({
    super.key,
    required this.widget,
  });

  final DetailsAudioBook widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: widget.size.height * .32,
        left: (widget.size.width / 2) * .50,
        height: 195,
        width: 190,
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/book-1.png"),
                    fit: BoxFit.fill))));
  }
}
