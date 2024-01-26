import 'package:flutter/material.dart';

class ComapnynameAddSecond extends StatelessWidget {
  ComapnynameAddSecond(
      {super.key, required this.id, required this.image, required this.rating});

  String id;
  String image;
  // String name;
  // String selling;
  String rating;

  @override
  Widget build(Object context) {
    return Center(
      child: Column(
        children: [
          Image.network(
            "http://137.184.91.38:5000/brandImages/${image}",
            width: 160,
            color: Colors.grey.shade900,
            colorBlendMode: BlendMode.color,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 171, 55, 58),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            height: 20,
            width: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
