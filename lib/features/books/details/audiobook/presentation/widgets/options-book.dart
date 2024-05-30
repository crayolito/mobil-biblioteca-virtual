import 'package:flutter/material.dart';

class OptionsBook extends StatelessWidget {
  const OptionsBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 110,
          width: 70,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: const Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 110,
          width: 70,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: const Icon(
                  Icons.bookmark_border_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: const Icon(
                  Icons.download,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
