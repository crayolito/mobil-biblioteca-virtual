import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TituloTraductorPage extends StatelessWidget {
  const TituloTraductorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: size.height * .20,
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
                    context.go('/todasCategorias');
                  },
                ),
              ),
              const SizedBox(width: 28),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'TRANSLATOR',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontFamily: 'Courier',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                    ),
                    Text(
                      'LIBRO',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontFamily: 'Courier',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 60),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
