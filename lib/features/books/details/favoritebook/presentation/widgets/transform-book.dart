import 'package:flutter/material.dart';

class TransformBook extends StatelessWidget {
  const TransformBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      OutlinedButton.icon(
          onPressed: () {
            showAboutDialog(context: context, children: [
              const Text(
                  'Aute amet dolore ipsum ex adipisicing incididunt pariatur eiusmod ipsum duis voluptate commodo qui. Non anim nulla enim do sunt minim anim sit nostrud sunt. Ex culpa ipsum voluptate ut qui Lorem ad. Consequat dolor duis nulla ipsum ea. Nostrud nulla nulla ad pariatur ullamco cupidatat aliquip irure dolore amet deserunt nulla veniam. Id ut duis nulla in commodo elit. Laboris ea ipsum aute excepteur quis magna elit est incididunt veniam deserunt ad veniam.')
            ]);
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
          onPressed: () {},
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
