import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/features/books/details/book/presentation/widgets/transform-book.dart';

class DescriptionsBook extends StatelessWidget {
  const DescriptionsBook({
    super.key,
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
                children: <Widget>[
                  FittedBox(
                    child: Text(
                      "HOLA MUNDO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0)),
                    ),
                  ),
                ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'DESCRIPTION',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.teal,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                            child: Text(
                          "Elit qui occaecat minim do. Ut proident amet dolor do aliquip exercitation ut exercitation dolore nisi. Aliqua labore duis aliqua aute sit aliquip est labore. Adipisicing irure aliquip ullamco non sunt ea amet ad qui enim commodo aliquip commodo. Deserunt id eu sunt duis ad eu consequat esse officia minim dolor velit velit. Reprehenderit et velit esse exercitation. Deserunt tempor aliqua excepteur adipisicing occaecat amet qui mollit ullamco amet reprehenderit esse. Amet cupidatat quis except Ullamco tempor culpa labore aliqua officia nostrud elit occaecat quis in. Excepteur labore nulla est consectetur anim duis exercitation ullamco laboris nostrud excepteur magna est sint. Et aliquip dolor ad consectetur est aliqua dolore. Incididunt aliquip fugiat qui duis pariatur voluptate est nostrud id officia non voluptate. Ad est reprehenderit ullamco duis aute velit cillum voluptate mollit officia.Dolore quis occaecat exercitation laborum nostrud et aliqua aliqua voluptate eiusmod ex elit. Lorem aliquip veniam occaecat pariatur elit dolore consequat est laboris. Est mollit voluptate magna occaecat. Magna do ullamco excepteur non incididunt esse anim eu magna sint incididunt. eur veniam quis veniam fugiat fugiat irure. Fugiat ea mollit amet pariatur do tempor magna eu aliqua dolor. Cillum et exercitation elit laborum non ullamco minim fugiat mollit. Ut consectetur voluptate deserunt ea velit. Pariatur elit aliqua est officia culpa consectetur aute ad sit. Consectetur tempor culpa ipsum excepteur.Enim Lorem eu ex ea do dolor minim proident. Qui Lorem fugiat aliqua proident. Exercitation proident irure eu ut. Exercitation qui ea et amet sunt veniam elit. Reprehenderit voluptate adipisicing sunt dolore ut eiusmod.",
                          style: GoogleFonts.notoSans(
                              color: Colors.black,
                              textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14.0,
                                letterSpacing: 0.2,
                              )),
                        )),
                      ),
                    ),
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
            const TransformBook(),
          ],
        ),
      ),
    );
  }
}
