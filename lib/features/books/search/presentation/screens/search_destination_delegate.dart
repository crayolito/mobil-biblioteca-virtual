import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/search/presentation/widgets/bar-search.dart';
import 'package:teslo_shop/features/books/search/presentation/widgets/container-results.dart';

class SearchPersonalized extends StatefulWidget {
  const SearchPersonalized({super.key});

  @override
  State<SearchPersonalized> createState() => _SearchPersonalizedState();
}

class _SearchPersonalizedState extends State<SearchPersonalized> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(.85),
        onPressed: () {},
        child: const Icon(
          Icons.chevron_left_sharp,
          size: 50,
          color: Color(0xFF393939),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/biblioteca3.jpg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fill),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(child: BarSearch()),
              SizedBox(
                height: 1,
              ),
              ContainerResults(),
            ],
          ),
        ),
      ),
    );
  }
}
