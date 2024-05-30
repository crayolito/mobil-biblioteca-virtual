import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.7),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(3, 7),
                blurRadius: 20,
                color: Color(0xFD3D3D3).withOpacity(.5))
          ],
          border: Border.all(
              color: const Color.fromARGB(255, 58, 57, 57), width: 2)),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: Color(0xFFF48A37),
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$score",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
