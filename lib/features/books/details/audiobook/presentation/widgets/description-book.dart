import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/screens/details-audio-book.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/widgets/widgets.dart';

class DetailsBook extends StatelessWidget {
  final DetailsAudioBook widget;
  const DetailsBook({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Container(
                  padding: const EdgeInsets.all(3.0),
                  color: const Color(0xffD6EFE8),
                  child: const Text(
                    "TURIMOS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xff50AE90),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    softWrap: true,
                  )),
            ),
            const SizedBox(height: 10.0),
            const Center(
              child: Text(
                "By : Lewis Carroll",
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.teal,
                    fontSize: 15.0),
                softWrap: true,
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Column(
                children: <Widget>[],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: OptionsAudio(
                        widgetAuxiliar: widget,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Divider(
                thickness: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
