import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Bitmap.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline3,
                    children: const [
                  TextSpan(text: "Book"),
                  TextSpan(
                      text: "Soft.",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
            RoundedButton(
              fontSize: 20,
              text: "Start Reading",
              press: () {
                context.go('/auth/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.verticalPadding = 16,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 15),
                  blurRadius: 30,
                  color: const Color(0xFF666666).withOpacity(.11))
            ]),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
