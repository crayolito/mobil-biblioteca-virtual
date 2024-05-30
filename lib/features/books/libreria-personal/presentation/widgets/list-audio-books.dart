import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';
import 'package:teslo_shop/features/books/details/audiobook/presentation/screens/details-audio-book.dart';

List<String> jsonaUdioBooks = [
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701966985/audio_files/vlrgzwc8gav1w9pyhsis.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701965811/audio_files/x0naoqm4phgq3cek6qqz.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701965928/audio_files/j6urxmjqsaq2bdljs88a.mp3",
  "https://res.cloudinary.com/dwivq8xpf/video/upload/v1701966900/audio_files/atw0dat6xlgvwmp0nuzg.mp3"
];

class ListAudiosBooks extends StatefulWidget {
  const ListAudiosBooks({
    super.key,
  });

  @override
  State<ListAudiosBooks> createState() => _ListAudiosBooksState();
}

class _ListAudiosBooksState extends State<ListAudiosBooks> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBloc>(context).add(OnAllBooks());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.69,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                itemCount: jsonaUdioBooks.length,
                itemBuilder: (context, index) {
                  var size = MediaQuery.of(context).size;
                  String url = jsonaUdioBooks[index];
                  return GestureDetector(
                    onTap: () {
                      showAdaptiveDialog(
                        context: context,
                        builder: (context) {
                          return FadeInUp(
                              delay: const Duration(milliseconds: 200),
                              child: DetailsAudioBook(size: size, url: url));
                        },
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, right: 8, left: 8),
                      child: SizedBox(
                        height: 140,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(flex: 2, child: Container()),
                                Flexible(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3,
                                                color: const Color(0xFF393939)
                                                    .withOpacity(.8)),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(7)),
                                            color:
                                                Colors.white.withOpacity(.90),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 58, 57, 57),
                                                  offset: Offset(-5, 4),
                                                  blurRadius: 4)
                                            ]),
                                      ),
                                    ))
                              ],
                            ),
                            Positioned(
                                top: 0,
                                bottom: 18,
                                left: 20,
                                right: 275,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/book-2.png"),
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.fitHeight),
                                  ),
                                )),
                            Positioned(
                                top: 40,
                                bottom: 15,
                                left: 109,
                                right: 45,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Audio Libro',
                                      style: GoogleFonts.josefinSans(
                                          color: const Color(0xFF393939),
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                    ),
                                    Text(
                                      "Formato MP3",
                                      maxLines: 1,
                                      style: GoogleFonts.josefinSans(
                                          decoration: TextDecoration.none,
                                          color: const Color(0xff50AE90),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                      softWrap: true,
                                    )
                                  ],
                                )),
                            Positioned(
                                top: 40,
                                bottom: 15,
                                left: 330,
                                right: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                              color: const Color(0xFF393939)
                                                  .withOpacity(.8),
                                              width: 3))),
                                  child: const Center(
                                    child: Icon(Icons.volume_up_sharp),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
