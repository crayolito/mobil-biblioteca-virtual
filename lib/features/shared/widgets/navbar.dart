import 'dart:math';

import 'package:flutter/material.dart';

class NavbarPersonalize extends StatefulWidget {
  final IconData iconOpcion1;
  final IconData iconOpcion2;
  final IconData iconOpcion3;

  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final VoidCallback onPressed3;

  const NavbarPersonalize(
      {super.key,
      required this.iconOpcion1,
      required this.iconOpcion2,
      required this.iconOpcion3,
      required this.onPressed1,
      required this.onPressed2,
      required this.onPressed3});

  @override
  State<NavbarPersonalize> createState() => _NavbarPersonalizeState();
}

class _NavbarPersonalizeState extends State<NavbarPersonalize> {
  bool openNav = false;

  @override
  Widget build(BuildContext context) {
    final height = min(MediaQuery.of(context).size.height * 0.09, 60.0);
    final width = min(
        openNav
            ? MediaQuery.of(context).size.width * 0.6
            : MediaQuery.of(context).size.width * 0.2,
        200.0);

    return SizedBox(
      height: height,
      width: width,
      child: Row(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            color: Colors.white,
            elevation: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (openNav)
                  NavbarButton(
                      icon: widget.iconOpcion1, onPressed: widget.onPressed1),
                if (openNav)
                  NavbarButton(
                      icon: widget.iconOpcion2, onPressed: widget.onPressed2),
                if (openNav)
                  NavbarButton(
                      icon: widget.iconOpcion3, onPressed: widget.onPressed3),
              ],
            ),
          ),
          SizedBox(
            width: 42,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                openNav ? Icons.chevron_right : Icons.chevron_left,
                color: const Color.fromARGB(255, 58, 57, 57),
              ),
              onPressed: () {
                setState(() {
                  openNav = !openNav;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class NavbarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const NavbarButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: const Color.fromARGB(255, 58, 57, 57),
      onPressed: onPressed,
    );
  }
}
