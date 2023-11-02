import 'package:flutter/material.dart';

class Newsservice extends StatefulWidget {
  @override
  State<Newsservice> createState() => _NewsState();
}

class _NewsState extends State<Newsservice> {
  List<String> newsi = [
    "assets/image/News/news.jpeg",
    "assets/image/News/news.jpeg",
    "assets/image/News/news.jpeg",
    "assets/image/News/news.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            // This next line does the trick.
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(right: 20),
              height: 200,
              child: Image.asset(
                newsi[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
