import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final String imageUrl;

  const RoundedIcon({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45, offset: Offset(0, 2), blurRadius: 0.6)
            ],
            image: DecorationImage(image: AssetImage(imageUrl))),
      ),
    );
  }
}
