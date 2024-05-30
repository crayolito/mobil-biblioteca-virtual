import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransformBook extends StatelessWidget {
  const TransformBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      OutlinedButton.icon(
          onPressed: () {
            context.go('/audioLibro');
          },
          icon: const Icon(
            Icons.library_music_rounded,
            color: Color(0xFF393939),
          ),
          label: const Text(
            '',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF393939)),
          )),
      const SizedBox(
        width: 5,
      ),
      OutlinedButton.icon(
          onPressed: () {
            context.go('/traductorLibro');
          },
          icon: const Icon(
            Icons.translate_outlined,
            color: Color(0xFF393939),
          ),
          label: const Text(
            '',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF393939)),
          )),
    ]);
  }
}
