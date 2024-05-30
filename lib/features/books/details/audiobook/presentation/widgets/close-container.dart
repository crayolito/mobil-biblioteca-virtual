import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/screens/details-audio-book.dart';

class OpcionCerrarVentana extends StatelessWidget {
  const OpcionCerrarVentana({
    super.key,
    required this.widget,
  });

  final DetailsAudioBook widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
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
    );
  }
}
