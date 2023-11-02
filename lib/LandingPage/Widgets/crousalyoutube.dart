import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:motoroctane/BrandPage/Components/youtube.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CrousalYoutube extends StatelessWidget {
  const CrousalYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    List<YouTube> links = [
      YouTube(
        uRL: 'https://www.youtube.com/watch?v=SIEC489Jc9Q',
        heading: "Green Plate",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor consectetur adipiscing",
      ),
      YouTube(
        uRL: 'https://www.youtube.com/watch?v=AYwaLVahNbM',
        heading: "Green Plate",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor consectetur adipiscing",
      ),
      YouTube(
        uRL: 'https://www.youtube.com/watch?v=1a4Gs7fQ7X0',
        heading: "Green Plate",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor consectetur adipiscing",
      ),
    ];

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: const TextStyle(
                    fontFamily: 'Armstrong',
                    height: 2,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: "TOP PICKS FOR ",
                      style: TextStyle(color: Colors.grey.shade600)),
                  TextSpan(
                      text: 'YOU', style: TextStyle(color: Colors.red.shade900))
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            child: CarouselSlider.builder(
              itemCount: links.length,
              options: CarouselOptions(
                height: 325,
                autoPlay: false,
                enlargeCenterPage: true,
                initialPage: 2,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(5),
                      width: 280,
                      height: 270,
                      // color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 175,
                            width: 270,
                            color: Colors.red,
                            child: YoutubePlayer(
                              controller: YoutubePlayerController(
                                initialVideoId: YoutubePlayer.convertUrlToId(
                                    links[index].uRL)!,
                                flags: YoutubePlayerFlags(
                                  autoPlay: false,
                                ),
                              ),
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.blue,
                              progressColors: ProgressBarColors(
                                  playedColor: Colors.blue,
                                  handleColor: Colors.blueAccent),
                            ),
                          ),
                          Container(
                            height: 82,
                            width: 230,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, top: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    links[index].heading,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Armstrong"),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    links[index].content,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey.shade600,
                                        fontFamily: "Montserrat"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
