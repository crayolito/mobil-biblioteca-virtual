import 'package:flutter/material.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/widgets/widgets.dart';

List<String> jsonaUdioBooks = [
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701966985/audio_files/vlrgzwc8gav1w9pyhsis.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701965811/audio_files/x0naoqm4phgq3cek6qqz.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701965928/audio_files/j6urxmjqsaq2bdljs88a.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701966900/audio_files/atw0dat6xlgvwmp0nuzg.mp3"
];

class DetailsAudioBook extends StatefulWidget {
  final Size size;
  final String url;
  const DetailsAudioBook({super.key, required this.size, required this.url});

  @override
  State<DetailsAudioBook> createState() => _DetailsAudioBookState();
}

class _DetailsAudioBookState extends State<DetailsAudioBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              OpcionCerrarVentana(widget: widget),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                  height: widget.size.height * 0.51,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bg.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      const OptionsBook(),
                      DetailsBook(
                        widget: widget,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          LogoBook(widget: widget),
        ],
      ),
    );
  }
}
