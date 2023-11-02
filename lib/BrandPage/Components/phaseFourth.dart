import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motoroctane/LandingPage/Widgets/youtube.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PhaseFourth extends StatefulWidget {
  const PhaseFourth({super.key});

  @override
  State<PhaseFourth> createState() => _PhaseFourthState();
}

class _PhaseFourthState extends State<PhaseFourth> {
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

    int count = 0;

    YoutubePlayerController _controller;

    // YoutubePlayerController? _controller2;
    // YoutubePlayerController? _controller3;

    @override
    void initState() async {
      final videoID1 = YoutubePlayer.convertUrlToId(links[0].uRL);
      final videoID2 = YoutubePlayer.convertUrlToId(links[1].uRL);
      final videoID3 = YoutubePlayer.convertUrlToId(links[2].uRL);

      // _controller1 = YoutubePlayerController(
      //     initialVideoId: videoID1!,
      //     flags: YoutubePlayerFlags(
      //       autoPlay: false,
      //       showLiveFullscreenButton: true,
      //     ));

      super.initState();
    }

    return Container(
      height: 245,
      child: Row(
        children: [
          Container(
            height: 240,
            width: 8,
            color: Colors.black,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              alignment: Alignment.center,
              width: 240,
              height: 60,
              color: Color.fromARGB(255, 147, 20, 20),
              child: Text(
                "YOUTUBE VIDEOS",
                style: TextStyle(
                    fontFamily: "Armstrong",
                    fontSize: 21,
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 280,
            child: ListView.builder(
              // This next line does the trick.
              itemCount: links.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
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
                    width: 230,
                    height: 240,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: 165,
                          width: 220,
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
                          height: 65,
                          width: 230,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  links[index].heading,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Montserrat"),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  links[index].content,
                                  style: TextStyle(
                                      fontSize: 8,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}




//  Row(
//                       children: [
//                         Container(
//                           child: Column(
//                             children: [
//                               Container(
//                                 height: 190,
//                                 width: 220,
//                                 color: Colors.red,
//                                 // child: YoutubePlayer(
//                                 //   controller: _controller1,
//                                 //   showVideoProgressIndicator: true,
//                                 // ),
//                               ),
//                               Container(
//                                 height: 60,
//                                 width: 220,
//                                 color: Colors.black,
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         )
//                       ],
//                     )