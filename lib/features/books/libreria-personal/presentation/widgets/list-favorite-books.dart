import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';
import 'package:teslo_shop/features/books/details/book/presentation/screens/categories-deatils-book.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';

class FavoriteBooks extends StatefulWidget {
  const FavoriteBooks({
    super.key,
  });

  @override
  State<FavoriteBooks> createState() => _FavoriteBooksState();
}

class _FavoriteBooksState extends State<FavoriteBooks> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBloc>(context).add(OnAllBooks());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBloc = BlocProvider.of<SearchBloc>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height * 0.69,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: searchBloc.state.books.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          final Book book = searchBloc.state.books[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GestureDetector(
                    onTap: () {
                      showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return FadeInUp(
                              delay: Duration(milliseconds: 200),
                              // child: DetailsScreen(size: size));
                              child: Container());
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage("assets/images/book-2.png"),
                            fit: BoxFit.fitHeight,
                          ))),
                        ),
                        Expanded(
                          flex: 2, // Container 3 ocupa el 30%
                          child: Center(
                            child: Container(
                              child: Text(
                                book.tituloLibro,
                                softWrap: true,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                  color: Color(0xFF393939),
                                  fontSize: 18,
                                )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
