import 'package:flutter/material.dart';

class TitlePresentation extends StatelessWidget {
  const TitlePresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white, fontFamily: 'Courier', fontSize: 39),
              children: const [
            TextSpan(text: "Librery \nVirtual"),
            TextSpan(
                text: "!Enjoy!", style: TextStyle(fontWeight: FontWeight.bold))
          ])),
    );
  }
}
