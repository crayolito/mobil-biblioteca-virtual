import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';
import 'package:teslo_shop/features/books/search/presentation/widgets/item-card.dart';
import 'package:teslo_shop/features/books/details/book/presentation/screens/categories-deatils-book.dart';
import 'package:animate_do/animate_do.dart';

class ContainerResults extends StatefulWidget {
  const ContainerResults({
    super.key,
  });

  @override
  State<ContainerResults> createState() => _ContainerResultsState();
}

class _ContainerResultsState extends State<ContainerResults> {
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
      padding: EdgeInsets.zero,
      width: double.infinity,
      child: Column(
        children: [
          Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                itemCount: searchBloc.state.books.length,
                itemBuilder: (context, index) {
                  var size = MediaQuery.of(context).size;

                  final Book book = searchBloc.state.books[index];
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
                      child: ItemCard(book: book));
                },
              )),
        ],
      ),
    );
  }
}
