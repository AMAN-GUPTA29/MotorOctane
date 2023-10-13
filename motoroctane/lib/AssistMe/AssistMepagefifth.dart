import 'dart:math';

import 'package:flutter/material.dart';

import 'package:motoroctane/AssistMe/AssistMepagesixth.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';

class AssistmeFifth extends StatefulWidget {
  const AssistmeFifth({super.key});

  @override
  State<AssistmeFifth> createState() => _AssistmeFifthState();
}

class _AssistmeFifthState extends State<AssistmeFifth> {
  double newval = 1;

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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Minimum Boot Space",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.1),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                      "assets/icons/suitcase.png",
                                    ),
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "1 BAG",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              const Column(
                                children: [
                                  Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/icons/suitcase.png",
                                        ),
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "6 BAG",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor:
                                  const Color.fromARGB(255, 147, 20, 20),
                              inactiveTrackColor: Colors.grey.shade300,
                              thumbColor:
                                  const Color.fromARGB(255, 147, 20, 20),
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 4,
                              ),
                              minThumbSeparation: 10,

                              // overlayColor: Colors.black,
                              // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                            ),
                            child: Slider(
                                value: newval,
                                min: 1,
                                // activeColor: Color.fromARGB(255, 147, 20, 20),
                                // inactiveColor: Colors.grey.shade300,
                                max: 6,
                                // divisions: 100,
                                label: newval.toString(),
                                divisions: 5,
                                onChanged: (newValues) {
                                  setState(() {
                                    newval = newValues;
                                  });
                                }),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "1 Bag - ${newval ~/ 1} Bag",
                          style: const TextStyle(
                              fontSize: 12, fontFamily: "Montserrat"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 8),
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
                                            const AssistmeSixth()),
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

extension Precision on double {
  double toPrecision(int fractionDigits) {
    num mod = pow(10, fractionDigits.toDouble());
    return ((this * mod).round().toDouble() / mod);
  }
}
