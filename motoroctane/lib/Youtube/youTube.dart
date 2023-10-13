import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/Youtube/youtubestructure.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

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

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset("assets/icons/whatsapp.png"),
      ),
      appBar: HeaderAll(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/image/landing/landing.jpg',
              width: double.infinity,
              // height: height * 0.23,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: width * 0.025, right: width * 0.025),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.04,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsetsDirectional.only(
                              start: width * 0.12, end: width * 0.12),
                        ),
                        child: Text(
                          'FILTER 1',
                          style: TextStyle(
                              fontSize: width * 0.032,
                              letterSpacing: width * 0.0053,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.04,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsetsDirectional.only(
                              start: width * 0.12, end: width * 0.12),
                        ),
                        child: Text(
                          'FILTER 2',
                          style: TextStyle(
                              fontSize: width * 0.032,
                              letterSpacing: width * 0.0053,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: width * 0.95,
              child: Column(
                children: [
                  for (var i = 0; i < links.length; i++)
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: width * 0.02, left: width * 0.02),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: height * 0.020, bottom: height * 0.012),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(height * 0.008),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                color: Colors.red,
                                child: YoutubePlayer(
                                  controller: YoutubePlayerController(
                                    initialVideoId:
                                        YoutubePlayer.convertUrlToId(
                                            links[i].uRL)!,
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
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: width * 0.04,
                                      right: width * 0.04,
                                      top: height * 0.008),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        links[i].heading,
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
                                        links[i].content,
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
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
