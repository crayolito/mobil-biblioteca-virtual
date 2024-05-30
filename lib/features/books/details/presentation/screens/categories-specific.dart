import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/features/books/search/presentation/widgets/widgets.dart';

class BooksSpecific extends StatelessWidget {
  const BooksSpecific({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/categorias.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: SizedBox(
                height: size.height * .27,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                          onTap: () {
                            // Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(width: 28),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'CATEGORY',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              "Arte &\nLiteratura",
                              softWrap: true,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .73,
              width: double.infinity,
              child: Column(
                children: [
                  const BarSearch(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(thickness: 3),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.topCenter,
                          child: const ContainerResults())),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
