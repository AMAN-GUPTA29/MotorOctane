import 'package:flutter/material.dart';
import 'package:motoroctane/allLoginPages/loginpage.dart';
import 'package:motoroctane/welcome.dart';

void main() {
  runApp(const MotarOctane());
}

class MotarOctane extends StatelessWidget {
  const MotarOctane({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Login()),
    );
  }
}
