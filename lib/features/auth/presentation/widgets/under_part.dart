import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnderPart extends StatelessWidget {
  final String title;
  final String navigatorText;
  final Function() onTap;
  const UnderPart(
      {super.key,
      required this.title,
      required this.navigatorText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    const kPrimaryColor = Color(0xfff1bb274);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'OpenSans ',
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            navigatorText,
            style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontFamily: 'Opensans'),
          ),
        )
      ],
    );
  }
}
