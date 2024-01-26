import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/allLoginPages/register.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() {
    return _OtpState();
  }
}

void callpage() {}

class _OtpState extends State<Otp> {
  late Timer _timer;
  int _start = 10;
  var id;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  List userList = [];

  void getProfile() async {
    id = await SecureStorage().readSecureData('_id');
    print(id);
    if (id == null || id == "null") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Register()),
      );
    } else {
      Navigator.pushAndRemoveUntil<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => LandingPage(),
          ),
          (Route<dynamic> route) =>
              false //if you want to disable back feature set to false
          );
    }

    //   SecureStorage().readSecureData('_id');
    //   SecureStorage().readSecureData('mobile');

    //   print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    //   try {
    //     var response = await Dio().get('http://137.184.91.38:5000/enduser');
    //     print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    //     print(response.statusCode);
    //     if (response.statusCode! >= 200 && response.statusCode! <= 300) {
    //       setState(() {
    //         userList = response.data;
    //         // print(response.data.toString());
    //         // print(response.data.length());
    //         print(userList.length);
    //         print(userList[1]);
    //         // print(userList.length());
    //         print("userYesssssssssssssssssssssssssssssss");
    //       });
    //     } else {
    //       print("Nooooooooooooooooooooooo");
    //     }
    //   } catch (e) {
    //     // setState(() {});
    //   }
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: TextStyle(
          fontFamily: 'Armstrong',
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        // border: Border.all(color: Color.fromRGBO(128, 145, 160, 1)),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      // border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.grey.shade300,
      ),
    );

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter the Code that was send to you at',
                    style: TextStyle(
                      fontSize: height * 0.022,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage(
                          "assets/icons/draw.png",
                        ),
                        size: 15,
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "+91 98743 45452",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.023,
                            color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Pinput(
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    showCursor: true,
                    onCompleted: (pin) {
                      // otpverify(pin);
                    },
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Armstrong',
                          height: 4,
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                      children: <TextSpan>[
                        TextSpan(
                            text: "I DIDN'T GET A ",
                            style: TextStyle(color: Colors.grey.shade600)),
                        TextSpan(
                            text: 'CODE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 171, 55, 58)))
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Armstrong',
                          height: 2.5,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Resend in $_start Seconds ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 171, 55, 58),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  _start == 0
                      ? TextButton(
                          onPressed: () {
                            getProfile();
                          },
                          child: Text(
                            "Resend",
                            style: TextStyle(
                                fontFamily: 'Armstrong',
                                color: Color.fromARGB(255, 171, 55, 58)),
                          ))
                      : SizedBox(
                          height: 0,
                        ),
                  Text(
                    "For now just wait 10 second and click resend",
                    style: TextStyle(
                        fontFamily: 'Armstrong',
                        color: Color.fromARGB(255, 171, 55, 58)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
