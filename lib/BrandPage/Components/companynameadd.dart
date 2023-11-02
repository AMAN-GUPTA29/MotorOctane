import 'package:flutter/material.dart';

class ComapnynameAddSecond extends StatelessWidget {
  const ComapnynameAddSecond({super.key});

  @override
  Widget build(Object context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/image/landing/OIP.jpeg',
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
                  "4.2",
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
