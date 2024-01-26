import 'dart:math';

import 'package:flutter/material.dart';

import 'package:motoroctane/AssistMe/assistMePagesecond.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';

class AssistmeFirst extends StatefulWidget {
  const AssistmeFirst({super.key});

  @override
  State<AssistmeFirst> createState() => _AssistmeFirstState();
}

class _AssistmeFirstState extends State<AssistmeFirst> {
  bool set1 = true;
  RangeValues valuesf = const RangeValues(20, 80);
  double minval = 20;
  double maxval = 20;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      valuesf.start.toString(),
      valuesf.end.toString(),
    );

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => LandingPage(),
            ),
            (Route<dynamic> route) => false
            //if you want to disable back feature set to false
            );

        return false;
      },
      child: SafeArea(
        child: Scaffold(
          drawer: NavDrawer(),
          key: _scaffoldKey,
          backgroundColor: Colors.grey.shade300,
          appBar: HeaderAlltest(
            appBar: AppBar(),
            drawerr: drawww,
          ),
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
                        color: Colors.white,
                        height: height * 0.48,
                        child: Image.asset(
                          "assets/image/tyre/tirenew/tirer.png",
                          color: Colors.grey.shade400,
                          scale: 2.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.43,
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
                                      style: TextStyle(
                                          color: Colors.grey.shade600)),
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
                              "Whats's your on road budget?",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.1),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 18),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 140,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          set1 = true;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Montserrat",
                                            fontSize: 10),
                                        backgroundColor: set1 == true
                                            ? Colors.black
                                            : Colors.white,
                                        foregroundColor: set1 == true
                                            ? Colors.white
                                            : Colors.grey.shade700,
                                      ),
                                      child: const Text(
                                        'AS PER EMI',
                                      )),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: 140,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          set1 = false;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                        backgroundColor: set1 == false
                                            ? Colors.black
                                            : Colors.white,
                                        foregroundColor: set1 == false
                                            ? Colors.white
                                            : Colors.grey.shade700,
                                      ),
                                      child: const Text(
                                        'AS PER FULL PAYMENT',
                                      )),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
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
                              child: RangeSlider(
                                  values: valuesf,
                                  min: 0.00,
                                  // activeColor: Color.fromARGB(255, 147, 20, 20),
                                  // inactiveColor: Colors.grey.shade300,

                                  max: 100.00,
                                  // divisions: 100,
                                  labels: labels,
                                  onChanged: (newValues) {
                                    setState(() {
                                      valuesf = newValues;
                                      minval = valuesf.start.toPrecision(2);
                                      maxval = valuesf.end.toPrecision(2);
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          set1 == true
                              ? Text(
                                  "₹ $minval Thousand - ₹ $maxval Thousand",
                                  style: const TextStyle(
                                      fontSize: 12, fontFamily: "Montserrat"),
                                )
                              : Text(
                                  "₹ $minval Lakhs - ₹ $maxval Lakhs",
                                  style: const TextStyle(
                                      fontSize: 13, fontFamily: "Montserrat"),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17, right: 17, top: 8),
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
                                          horizontal: 40),
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color.fromARGB(
                                          255, 147, 20, 20),
                                      side: const BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 147, 20, 20))),
                                  child: const Text(
                                    "BACK",
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
                                              const AssistmeSecond()),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40,
                                      ),
                                      backgroundColor: Colors.white,
                                      foregroundColor: const Color.fromARGB(
                                          255, 147, 20, 20),
                                      side: const BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 147, 20, 20))),
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
