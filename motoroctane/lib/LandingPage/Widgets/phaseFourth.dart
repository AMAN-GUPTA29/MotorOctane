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

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    return Container(
      height: height * 0.33,
      child: Row(
        children: [
          Container(
            height: height * 0.317,
            width: width * 0.025,
            color: Colors.black,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              alignment: Alignment.center,
              width: height * 0.317,
              height: width * 0.15,
              color: Color.fromARGB(255, 147, 20, 20),
              child: Text(
                "YOUTUBE VIDEOS",
                style: TextStyle(
                    fontFamily: "Armstrong",
                    fontSize: height * 0.0255,
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Container(
            width: width * 0.8,
            child: ListView.builder(
              // This next line does the trick.
              itemCount: links.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.02),
                  child: Container(
                    padding: EdgeInsets.only(top: height * 0.008),
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
                    margin: EdgeInsets.all(height * 0.008),
                    width: width * 0.64,
                    height: 240,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.22,
                          width: width * 0.61,
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
                          height: height * 0.08,
                          width: width * 0.63,
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.025,
                                right: width * 0.025,
                                top: height * 0.008),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  links[index].heading,
                                  style: TextStyle(
                                      fontSize: height * 0.015,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Montserrat"),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  links[index].content,
                                  style: TextStyle(
                                      fontSize: height * 0.0101,
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