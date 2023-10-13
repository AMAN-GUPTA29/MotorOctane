import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                  fontFamily: 'Armstrong',
                  height: 2,
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: "HYUNDAI ",
                    style: TextStyle(color: Colors.grey.shade600)),
                TextSpan(
                    text: 'UPDATE',
                    style: TextStyle(color: Colors.red.shade900))
              ],
            ),
          ),
        ),
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
