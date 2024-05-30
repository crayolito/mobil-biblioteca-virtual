import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePresentation extends StatelessWidget {
  const TitlePresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .20,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 8, top: 55),
            width: 220,
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bienvenido",
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Disfrute los Libros",
                  maxLines: 2,
                  // softWrap: true,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )
        ],
      ),
      // ),
    );
  }
}
