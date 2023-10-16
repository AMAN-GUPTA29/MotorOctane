import 'package:flutter/material.dart';

import 'package:motoroctane/AssistMe/AssistMepagethird.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';

class AssistmeSecond extends StatefulWidget {
  const AssistmeSecond({super.key});

  @override
  State<AssistmeSecond> createState() => _AssistmeSecondState();
}

class _AssistmeSecondState extends State<AssistmeSecond> {
  bool fuel1 = false;
  bool fuel2 = false;
  bool fuel3 = false;
  bool fuel4 = false;
  bool fuel5 = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };
    return SafeArea(
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
                    height: 318,
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
                        Text(
                          "Fuel Type",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  fuel1 = true;
                                  fuel2 = false;
                                  fuel3 = false;
                                  fuel4 = false;
                                  fuel5 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 37),
                                backgroundColor:
                                    fuel1 == true ? Colors.black : Colors.white,
                              ),
                              child: Text(
                                "PETROL",
                                style: TextStyle(
                                    color: fuel1 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  fuel1 = false;
                                  fuel2 = true;
                                  fuel3 = false;
                                  fuel4 = false;
                                  fuel5 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                backgroundColor:
                                    fuel2 == true ? Colors.black : Colors.white,
                              ),
                              child: Text(
                                "DIESEL",
                                style: TextStyle(
                                    color: fuel2 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5),
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
                                  fuel1 = false;
                                  fuel2 = false;
                                  fuel3 = true;
                                  fuel4 = false;
                                  fuel5 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 31),
                                backgroundColor:
                                    fuel3 == true ? Colors.black : Colors.white,
                              ),
                              child: Text(
                                "ELECTRIC",
                                style: TextStyle(
                                    color: fuel3 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  fuel1 = false;
                                  fuel2 = false;
                                  fuel3 = false;
                                  fuel4 = true;
                                  fuel5 = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 38),
                                backgroundColor:
                                    fuel4 == true ? Colors.black : Colors.white,
                              ),
                              child: Text(
                                "HYBRID",
                                style: TextStyle(
                                    color: fuel4 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5),
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
                                  fuel1 = false;
                                  fuel2 = false;
                                  fuel3 = false;
                                  fuel4 = false;
                                  fuel5 = true;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                backgroundColor:
                                    fuel5 == true ? Colors.black : Colors.white,
                              ),
                              child: Text(
                                "CNG",
                                style: TextStyle(
                                    color: fuel5 == true
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    letterSpacing: 1.5),
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
                                            const AssistmeThird()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40),
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
