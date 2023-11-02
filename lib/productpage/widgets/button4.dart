import 'package:flutter/material.dart';
import 'package:motoroctane/BrandPage/Components/youtube.dart';
import 'package:motoroctane/widgets/youtubeproductvarient.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeProduct extends StatelessWidget {
  const YoutubeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    List<YouTubeProductVarient> links = [
      YouTubeProductVarient(
        uRL: 'https://www.youtube.com/watch?v=SIEC489Jc9Q',
        content: "CAN&#39;T MISS: NEW Hyundai Creta - All DETAL...",
      ),
      YouTubeProductVarient(
        uRL: 'https://www.youtube.com/watch?v=AYwaLVahNbM',
        content: "CAN&#39;T MISS: NEW Hyundai Creta - All DETAL...",
      ),
      YouTubeProductVarient(
        uRL: 'https://www.youtube.com/watch?v=1a4Gs7fQ7X0',
        content: "CAN&#39;T MISS: NEW Hyundai Creta - All DETAL...",
      ),
    ];

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: double.infinity,
        height: height * 0.32,
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
                // height: 240,
                // color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.22,
                      width: width * 0.61,
                      color: Colors.red,
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId:
                              YoutubePlayer.convertUrlToId(links[index].uRL)!,
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      // height: height * 0.08,
                      width: width * 0.62,
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
                              links[index].content,
                              style: TextStyle(
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600,
                                  fontFamily: "Armstrong"),
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
    );
  }
}
