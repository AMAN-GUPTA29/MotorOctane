import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:motoroctane/servicePage.dart/crousaladddata.dart';

class Crousalservice extends StatefulWidget {
  const Crousalservice({super.key});

  @override
  State<Crousalservice> createState() => _CrousalState();
}

class _CrousalState extends State<Crousalservice>
    with TickerProviderStateMixin {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    List<CrousaladdData> crousal = [
      CrousaladdData(
        image: "assets/icons/crousalcar.jpg",
      ),
      CrousaladdData(
        image: "assets/icons/crousalcar.jpg",
      ),
      CrousaladdData(
        image: "assets/icons/crousalcar.jpg",
      ),
      CrousaladdData(
        image: "assets/icons/crousalcar.jpg",
      ),
    ];

    final CarouselController carouselController = CarouselController();

    return Container(
      height: 180,
      child: Column(
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
          )
        ],
      ),
    );
  }
}
