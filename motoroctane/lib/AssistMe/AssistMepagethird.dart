import 'package:flutter/material.dart';

import 'package:motoroctane/AssistMe/AssistMepagefourth.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';

class AssistmeThird extends StatefulWidget {
  const AssistmeThird({super.key});

  @override
  State<AssistmeThird> createState() => _AssistmeThirdState();
}

class _AssistmeThirdState extends State<AssistmeThird> {
  bool seater2 = false;
  bool seater3 = false;
  bool seater4 = false;
  bool seater5 = false;
  bool seater6 = false;
  bool seater7 = false;
  bool seater8 = false;
  bool seater9 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: HeaderAll(appBar: AppBar()),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 340,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/image/tyre/tirenew/tirer.png",
                        color: Colors.grey.shade400,
                        scale: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 317,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Armstrong',
                                  height: 2,
                                  fontSize: 23,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "ASSIST ",
                                    style:
                                        TextStyle(color: Colors.grey.shade600)),
                                const TextSpan(
                                    text: 'ME',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 147, 20, 20)))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: const Color.fromARGB(255, 147, 20, 20),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipOval(
                              child: Container(
                                height: 11,
                                width: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Seating Capacity",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.1),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    seater2 = true;
                                    seater3 = false;
                                    seater4 = false;
                                    seater5 = false;
                                    seater6 = false;
                                    seater7 = false;
                                    seater8 = false;
                                    seater9 = false;
                                  });
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  backgroundColor: seater2 == true
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                child: Text(
                                  "2 SEATER",
                                  style: TextStyle(
                                      color: seater2 == true
                                          ? Colors.white
                                          : Colors.grey.shade600,
                                      letterSpacing: 1.5,
                                      fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    seater2 = false;
                                    seater3 = true;
                                    seater4 = false;
                                    seater5 = false;
                                    seater6 = false;
                                    seater7 = false;
                                    seater8 = false;
                                    seater9 = false;
                                  });
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  backgroundColor: seater3 == true
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                child: Text(
                                  "3 SEATER",
                                  style: TextStyle(
                                      color: seater3 == true
                                          ? Colors.white
                                          : Colors.grey.shade600,
                                      letterSpacing: 1.5,
                                      fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    seater2 = false;
                                    seater3 = false;
                                    seater4 = true;
                                    seater5 = false;
                                    seater6 = false;
                                    seater7 = false;
                                    seater8 = false;
                                    seater9 = false;
                                  });
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  backgroundColor: seater4 == true
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                child: Text(
                                  "4 SEATER",
                                  style: TextStyle(
                                      color: seater4 == true
                                          ? Colors.white
                                          : Colors.grey.shade600,
                                      letterSpacing: 1.5,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  seater2 = false;
                                  seater3 = false;
                                  seater4 = false;
                                  seater5 = true;
                                  seater6 = false;
                                  seater7 = false;
                                  seater8 = false;
                                  seater9 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                backgroundColor: seater5 == true
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                "5 SEATER",
                                style: TextStyle(
                                    color: seater5 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  seater2 = false;
                                  seater3 = false;
                                  seater4 = false;
                                  seater5 = false;
                                  seater6 = true;
                                  seater7 = false;
                                  seater8 = false;
                                  seater9 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                backgroundColor: seater6 == true
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                "6 SEATER",
                                style: TextStyle(
                                    color: seater6 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  seater2 = false;
                                  seater3 = false;
                                  seater4 = false;
                                  seater5 = false;
                                  seater6 = false;
                                  seater7 = true;
                                  seater8 = false;
                                  seater9 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                backgroundColor: seater7 == true
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                "7 SEATER",
                                style: TextStyle(
                                    color: seater7 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  seater2 = false;
                                  seater3 = false;
                                  seater4 = false;
                                  seater5 = false;
                                  seater6 = false;
                                  seater7 = false;
                                  seater8 = true;
                                  seater9 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                backgroundColor: seater8 == true
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                "8 SEATER",
                                style: TextStyle(
                                    color: seater8 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  seater2 = false;
                                  seater3 = false;
                                  seater4 = false;
                                  seater5 = false;
                                  seater6 = false;
                                  seater7 = false;
                                  seater8 = false;
                                  seater9 = true;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                backgroundColor: seater9 == true
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                "9 SEATER",
                                style: TextStyle(
                                    color: seater9 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22),
                                    backgroundColor: Colors.white,
                                    foregroundColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 147, 20, 20))),
                                child: const Text(
                                  "PREVIOUS",
                                  style: TextStyle(letterSpacing: 1.5),
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AssistmeFourth()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                    ),
                                    backgroundColor: Colors.white,
                                    foregroundColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 147, 20, 20))),
                                child: const Text(
                                  "NEXT",
                                  style: TextStyle(letterSpacing: 1.5),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
