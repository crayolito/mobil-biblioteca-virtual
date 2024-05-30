import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/details/book/presentation/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  final Size size;
  const DetailsScreen({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: size.height * 0.30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      alignment: Alignment.topCenter,
                      height: size.height * .30,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                height: size.height * 0.66,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: const Column(
                  children: [
                    // DescriptionsBook()
                  ],
                ),
              ),
            )
          ],
        ),
        // LogoBook(size: size),
      ],
    );
  }
}
