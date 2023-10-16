import 'package:flutter/material.dart';

import 'package:motoroctane/AssistMe/AssistMepagefifth.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';

class AssistmeFourth extends StatefulWidget {
  const AssistmeFourth({super.key});

  @override
  State<AssistmeFourth> createState() => _AssistmeFourthState();
}

class _AssistmeFourthState extends State<AssistmeFourth> {
  bool feature1 = false;
  bool feature2 = false;
  bool feature3 = false;
  bool feature4 = false;
  bool feature5 = false;
  bool feature6 = false;
  bool feature7 = false;
  bool feature8 = false;
  bool feature9 = false;
  bool feature10 = false;
  bool feature11 = false;
  bool feature12 = false;
  bool feature13 = false;
  bool feature14 = false;
  bool feature15 = false;
  bool feature16 = false;
  bool feature17 = false;
  bool feature18 = false;
  bool feature19 = false;
  bool feature20 = false;
  bool feature21 = false;
  bool feature22 = false;

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
        appBar: HeaderAlltest(
          appBar: AppBar(),
          drawerr: drawww,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 500,
                  child: Image.asset(
                    "assets/image/tyre/tirenew/tirer.png",
                    color: Colors.grey.shade400,
                    scale: 1.3,
                  ),
                ),
                SizedBox(
                  height: 501,
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
                                      color: Color.fromARGB(255, 147, 20, 20)))
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
                        ],
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Any Specific Features?",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature1 == false
                                        ? feature1 = true
                                        : feature1 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature1 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature1 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature2 == false
                                        ? feature2 = true
                                        : feature2 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature2 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature2 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature3 == false
                                        ? feature3 = true
                                        : feature3 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature3 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature3 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature4 == false
                                        ? feature4 = true
                                        : feature4 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature4 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature4 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature5 == false
                                        ? feature5 = true
                                        : feature5 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature5 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature5 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature6 == false
                                        ? feature6 = true
                                        : feature6 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature6 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature6 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature7 == false
                                        ? feature7 = true
                                        : feature7 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature7 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature7 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature8 == false
                                        ? feature8 = true
                                        : feature8 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature8 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature8 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature9 == false
                                        ? feature9 = true
                                        : feature9 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature9 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature9 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature10 == false
                                        ? feature10 = true
                                        : feature10 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature10 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature10 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature11 == false
                                        ? feature11 = true
                                        : feature11 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature11 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature11 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature12 == false
                                        ? feature12 = true
                                        : feature12 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature12 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature12 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature13 == false
                                        ? feature13 = true
                                        : feature13 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature13 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature13 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature14 == false
                                        ? feature14 = true
                                        : feature14 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature14 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature14 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature15 == false
                                        ? feature15 = true
                                        : feature15 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature15 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature15 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature16 == false
                                        ? feature16 = true
                                        : feature16 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature16 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature16 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature17 == false
                                        ? feature17 = true
                                        : feature17 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature17 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature17 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              width: 140,
                              height: 24,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature18 == false
                                        ? feature18 = true
                                        : feature18 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature18 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature18 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature19 == false
                                        ? feature19 = true
                                        : feature19 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature19 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature19 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              width: 140,
                              height: 24,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature20 == false
                                        ? feature20 = true
                                        : feature20 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature20 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature20 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature21 == false
                                        ? feature21 = true
                                        : feature21 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature21 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature21 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              width: 140,
                              height: 24,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature22 == false
                                        ? feature22 = true
                                        : feature22 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 8),
                                  backgroundColor: feature22 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: feature22 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'FEATURES',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 8),
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
                                      color: Color.fromARGB(255, 147, 20, 20))),
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
                                          const AssistmeFifth()),
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
                                      color: Color.fromARGB(255, 147, 20, 20))),
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
