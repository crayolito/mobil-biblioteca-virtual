import 'package:flutter/material.dart';

class ContainerPresentation extends StatelessWidget {
  const ContainerPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 30,
              color: const Color(0xFFD3D3D3).withOpacity(.84))
        ],
        border:
            Border.all(color: const Color.fromARGB(255, 58, 57, 57), width: 3),
      ),
      child: Center(
        child: Text(
          'Categorias',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontFamily: 'Courier', fontWeight: FontWeight.bold, fontSize: 29),
        ),
      ),
    );
  }
}
