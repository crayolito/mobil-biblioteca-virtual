// ignore: file_names
import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';
import 'package:teslo_shop/features/books/search/presentation/widgets/bookRating.dart';

class ItemCard extends StatelessWidget {
  final Book book;
  const ItemCard({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
      child: SizedBox(
        height: 136,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 27,
              left: 0,
              right: 0,
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Image.asset(
              "assets/images/book-1.png",
              width: 110,
            ),
            Positioned(
                top: 25,
                right: 10,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 3),
                      height: 40,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.info)),
                    ),
                    const BookRating(
                      score: 4.9,
                    )
                  ],
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Divider(
                height: 22,
                color: Color(0xFF393939).withOpacity(0.8),
                thickness: 2,
              ),
            ),
            Positioned(
                top: 35,
                right: 50,
                child: Container(
                  height: 90,
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${book.tituloLibro} | ${book.tipoLibro} \n',
                        style: TextStyle(
                            color: Color(0xFF393939),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "By : ${book.autor}",
                        style:
                            TextStyle(color: Color(0xFF8F8F8F), fontSize: 19),
                        maxLines: 1,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
