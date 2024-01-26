import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:motoroctane/LandingPage/Widgets/youtubecontrolller.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/allLoginPages/loginpage.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:motoroctane/navigator.dart';
import 'package:motoroctane/welcome.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env.production');
  // bool output = await Isloggedin.loggedIn;
  // print(output);
  // await Isloggedin.setTrue();
  // output = await Isloggedin.loggedIn;
  // print(output);
  // await Isloggedin.setFalse();
  // output = await Isloggedin.loggedIn;
  // print(output);
  // await Isloggedin.isLoggedinData();
  Isloggedin inst = new Isloggedin();
  await inst.getProfile();

  bool output;

  output = await Isloggedin.loggedIn;
  print("${output} here");

  // Controlleryoutube contyu = new Controlleryoutube();
  // await contyu.getlink();

  runApp(MotarOctane(
    output: output,
  ));
}

class MotarOctane extends StatefulWidget {
  MotarOctane({super.key, required this.output});

  bool output;

  @override
  State<MotarOctane> createState() => _MotarOctaneState();
}

class _MotarOctaneState extends State<MotarOctane> {
  @override
  void initState() {
    // loadlogProfile();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/landing': (context) => const LandingPage(),
      },
      debugShowCheckedModeBanner: false,
      home: widget.output == true ? LandingPage() : Login(),
    );
  }
}
