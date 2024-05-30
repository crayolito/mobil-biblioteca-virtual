import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/books/libreria-personal/presentation/widgets/widgets.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class PersonalSpace extends StatefulWidget {
  const PersonalSpace({super.key});

  @override
  State<PersonalSpace> createState() => _PersonalSpaceState();
}

class _PersonalSpaceState extends State<PersonalSpace> {
  int botonSelect = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: NavbarPersonalize(
        iconOpcion1: Icons.home,
        onPressed1: () {
          context.go('/todasCategorias');
        },
        iconOpcion2: Icons.search,
        onPressed2: () {
          context.go('/buscadorGeneral');
        },
        iconOpcion3: Icons.logout_outlined,
        onPressed3: () {
          context.go('/auth/login');
        },
      ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(
                child: TitlePresentation(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 30,
                        color: const Color(0xFFD3D3D3).withOpacity(.84))
                  ],
                  border: Border.all(
                      color: const Color.fromARGB(255, 58, 57, 57), width: 2),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton.icon(
                          key: const Key('1'),
                          style: ButtonStyle(
                              side: MaterialStatePropertyAll(BorderSide(
                                  color: botonSelect == 1
                                      ? const Color.fromARGB(255, 58, 57, 57)
                                          .withOpacity(.99)
                                      : const Color.fromARGB(255, 58, 57, 57)
                                          .withOpacity(.40),
                                  width: 2))),
                          onPressed: () {
                            if (const ValueKey('1') != null) {
                              setState(() {
                                botonSelect = 1;
                              });
                            }
                          },
                          icon: Icon(
                            botonSelect == 1
                                ? Icons.my_library_books_sharp
                                : Icons.my_library_books_outlined,
                            color: botonSelect == 1
                                ? const Color.fromARGB(255, 58, 57, 57)
                                    .withOpacity(.99)
                                : const Color.fromARGB(255, 58, 57, 57)
                                    .withOpacity(.40),
                          ),
                          label: const Text(
                            '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF393939)),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton.icon(
                          key: const Key('2'),
                          style: ButtonStyle(
                              side: MaterialStatePropertyAll(BorderSide(
                                  color: botonSelect == 2
                                      ? const Color.fromARGB(255, 58, 57, 57)
                                          .withOpacity(.99)
                                      : const Color.fromARGB(255, 58, 57, 57)
                                          .withOpacity(.40),
                                  width: 2))),
                          onPressed: () {
                            // ignore: unnecessary_null_comparison
                            if (const ValueKey('2') != null) {
                              setState(() {
                                botonSelect = 2;
                              });
                            }
                          },
                          icon: Icon(
                            botonSelect == 2
                                ? Icons.library_music
                                : Icons.library_music_outlined,
                            color: botonSelect == 2
                                ? const Color.fromARGB(255, 58, 57, 57)
                                    .withOpacity(.99)
                                : const Color.fromARGB(255, 58, 57, 57)
                                    .withOpacity(.40),
                          ),
                          label: const Text(
                            '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF393939)),
                          )),
                    ]),
              ),
              botonSelect == 1 ? const FavoriteBooks() : const ListAudiosBooks()
            ],
          ),
        ),
      ),
    );
  }
}
