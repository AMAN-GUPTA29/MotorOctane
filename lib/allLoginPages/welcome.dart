import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/navigator.dart';

class Welcomee extends StatelessWidget {
  Welcomee(
      {super.key,
      required this.dp,
      required this.firstname,
      required this.lastname});

  XFile dp;
  String firstname;
  String lastname;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontFamily: 'Armstrong',
                      height: 1,
                      fontSize: 24,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "WELCOME ",
                        style: TextStyle(color: Colors.grey.shade600)),
                    TextSpan(
                        text: firstname.toUpperCase(),
                        style:
                            TextStyle(color: Color.fromARGB(255, 171, 55, 58)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: width * 0.2,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Transform.scale(
                        scale: 1,
                        child: Image.file(
                          File(
                            dp.path,
                          ),
                          fit: BoxFit.cover,
                          height: 700,
                          width: 700,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Center(
              child: Text(
                "$firstname $lastname",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w900,
                    fontSize: height * 0.023),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Center(
              child: Text(
                "MotorOctane: Aapka Auto Expert",
                style: TextStyle(
                    height: 1.4,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 171, 55, 58),
                    fontFamily: 'Montserrat',
                    fontSize: height * 0.02),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.085,
            ),
            Container(
              width: width * 0.6,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.all(Radius.zero)),
              child: ElevatedButton(
                  onPressed: () async {
                    Isloggedin inst = new Isloggedin();
                    await inst.getProfile();

                    Navigator.pushAndRemoveUntil<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) => LandingPage(),
                        ),
                        (Route<dynamic> route) =>
                            false //if you want to disable back feature set to false
                        );
                  },
                  child: Text(
                    'NEXT',
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white)),
            )
          ],
        ),
      ),
    ));
  }
}
