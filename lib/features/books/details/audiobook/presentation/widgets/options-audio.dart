import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/screens/details-audio-book.dart';

class OptionsAudio extends StatefulWidget {
  final DetailsAudioBook widgetAuxiliar;
  const OptionsAudio({super.key, required this.widgetAuxiliar});

  @override
  State<OptionsAudio> createState() => _OptionsAudioState();
}

class _OptionsAudioState extends State<OptionsAudio> {
  List<StreamSubscription> streams = [];
  AudioPlayer audioPlayer = AudioPlayer();
  int tiempoProgreso = 0;
  int duracionAudio = 0;
  PlayerState playerState = PlayerState.paused;

  @override
  void initState() {
    streams.add(audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        playerState = event;
      });
    }));

    streams.add(audioPlayer.onDurationChanged.listen((event) async {
      setState(() {
        duracionAudio = event.inMilliseconds;
      });
    }));

    streams.add(audioPlayer.onPositionChanged.listen((event) async {
      setState(() {
        tiempoProgreso = event.inMilliseconds;
      });
    }));

    super.initState();
  }

  @override
  void dispose() {
    streams.forEach((element) => element.cancel());
    // audioPlayer.dispose();
    audioPlayer.stop();
    audioPlayer.release();
    super.dispose();
  }

  playMusic() async {
    await audioPlayer.play(UrlSource(widget.widgetAuxiliar.url)).onError(
      (error, stackTrace) {
        if (error.runtimeType is TimeoutException) {
          audioPlayer.stop();
          audioPlayer.release();
        }
      },
    );
  }

  pauseMusic() async {
    await audioPlayer.pause();
  }

  Future<String> conversor(int inMilliseconds) async {
    // Calcula los minutos
    int minutes = inMilliseconds ~/ (60 * 1000);

    // Calcula los segundos
    int seconds = (inMilliseconds % (60 * 1000)) ~/ 1000;

    // Devuelve la cadena con los minutos y los segundos
    return '${minutes}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
              padding: const EdgeInsets.all(3.0),
              color: const Color(0xffD6EFE8),
              child: const Text(
                "Kanashiro Ever Ochoa",
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xff50AE90),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              )),
        ),
        SizedBox(
          height: 70,
          width: double.infinity,
          child: Material(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_previous,
                        color: Color(0xff50AE90))),
                IconButton(
                    onPressed: () {
                      playerState == PlayerState.playing
                          ? pauseMusic()
                          : playMusic();
                    },
                    icon: Icon(
                        playerState == PlayerState.playing
                            ? Icons.pause_circle_filled_outlined
                            : Icons.play_circle_fill_outlined,
                        color: const Color(0xff50AE90))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.stop_circle_rounded,
                        color: Color(0xff50AE90))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_next, color: Color(0xff50AE90)))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Material(
              color: Colors.transparent,
              child: Slider(
                activeColor: const Color(0xff50AE90),
                inactiveColor: const Color(0xFF393939),
                min: 0,
                max: duracionAudio.floorToDouble(),
                value: tiempoProgreso.floorToDouble(),
                onChanged: (value) {
                  setState(() {
                    tiempoProgreso = value.floor();
                    audioPlayer.seek(Duration(milliseconds: tiempoProgreso));
                  });
                },
              ),
            ),
          ),
        ),
        Container(
            // padding: const EdgeInsets.symmetric(horizontal: 15),
            // height: 1,
            // width: double.infinity,
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'data',
            //       style: GoogleFonts.josefinSans(
            //           decoration: TextDecoration.none,
            //           color: const Color(0xff50AE90),
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       'data',
            //       style: GoogleFonts.josefinSans(
            //           decoration: TextDecoration.none,
            //           color: const Color(0xff50AE90),
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // ),
            )
      ],
    );
  }
}
