import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:motoroctane/LandingPage/Widgets/crousaldatatype.dart';

class Crousal extends StatefulWidget {
  const Crousal({super.key});

  @override
  State<Crousal> createState() => _CrousalState();
}

class _CrousalState extends State<Crousal> with TickerProviderStateMixin {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    List<CrousalData> crousal = [
      CrousalData(
          image: "assets/icons/crousalcar.jpg",
          link: "About Us Vedio",
          heading: "YouTube Creativel"),
      CrousalData(
          image: "assets/icons/crousalcar.jpg",
          link: "About Us Vedio",
          heading: "YouTube Creativepm"),
      CrousalData(
          image: "assets/icons/crousalcar.jpg",
          link: "About Us Vedio",
          heading: "YouTube Creativem"),
      CrousalData(
          image: "assets/icons/crousalcar.jpg",
          link: "About Us Vedio",
          heading: "YouTube Creativeq"),
    ];

    final CarouselController carouselController = CarouselController();

    return Container(
      height: 180,
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: crousal
                      .map((item) => Image.asset(
                            item.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ))
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          currentIndex = index;
                          print(currentIndex);
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     for (var i = 0; i < crousal.length; i++)
              //       builderIndicator(currentIndex == i)
              //   ],
              // )

              // TabPageSelector(
              //   controller: TabController(
              //       length: crousal.length,
              //       initialIndex: currentIndex,
              //       vsync: this),
              // ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        crousal[currentIndex].heading,
                        style: TextStyle(
                            fontFamily: "Armstrong",
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.red,
                          ),
                          Text(
                            crousal[currentIndex].link,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: crousal.asMap().entries.map((entry) {
                          // print(entry.key);
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7,
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

// Widget builderIndicator(bool isSlected) {
//   return Container(
//     height: isSlected ? 12 : 8,
//     width: isSlected ? 12 : 8,
//     decoration: BoxDecoration(
//         color: isSlected ? Colors.grey : Colors.black, shape: BoxShape.circle),
//   );
// }

