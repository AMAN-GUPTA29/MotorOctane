import 'dart:math';

import 'package:flutter/material.dart';

import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';

class AssistmeSixth extends StatefulWidget {
  const AssistmeSixth({super.key});

  @override
  State<AssistmeSixth> createState() => _AssistmeSixthState();
}

class _AssistmeSixthState extends State<AssistmeSixth> {
  bool brand1 = false;
  bool brand2 = false;
  bool brand3 = false;
  bool brand4 = false;
  bool brand5 = false;
  bool brand6 = false;
  bool brand7 = false;
  bool brand8 = false;
  bool brand9 = false;
  bool brand10 = false;
  bool brand11 = false;
  bool brand12 = false;
  bool brand13 = false;
  bool brand14 = false;
  bool brand15 = false;
  bool brand16 = false;
  bool brand17 = false;
  bool brand18 = false;
  bool brand19 = false;
  bool brand20 = false;
  bool brand21 = false;
  bool brand22 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HeaderAll(appBar: AppBar()),
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
                        ],
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Any Specific Brands?",
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
                                    brand1 == false
                                        ? brand1 = true
                                        : brand1 = false;
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
                                  backgroundColor: brand1 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand1 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand2 == false
                                        ? brand2 = true
                                        : brand2 = false;
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
                                  backgroundColor: brand2 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand2 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand3 == false
                                        ? brand3 = true
                                        : brand3 = false;
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
                                  backgroundColor: brand3 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand3 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand4 == false
                                        ? brand4 = true
                                        : brand4 = false;
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
                                  backgroundColor: brand4 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand4 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand5 == false
                                        ? brand5 = true
                                        : brand5 = false;
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
                                  backgroundColor: brand5 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand5 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand6 == false
                                        ? brand6 = true
                                        : brand6 = false;
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
                                  backgroundColor: brand6 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand6 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand7 == false
                                        ? brand7 = true
                                        : brand7 = false;
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
                                  backgroundColor: brand7 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand7 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand8 == false
                                        ? brand8 = true
                                        : brand8 = false;
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
                                  backgroundColor: brand8 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand8 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand9 == false
                                        ? brand9 = true
                                        : brand9 = false;
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
                                  backgroundColor: brand9 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand9 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand10 == false
                                        ? brand10 = true
                                        : brand10 = false;
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
                                  backgroundColor: brand10 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand10 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand11 == false
                                        ? brand11 = true
                                        : brand11 = false;
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
                                  backgroundColor: brand11 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand11 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand12 == false
                                        ? brand12 = true
                                        : brand12 = false;
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
                                  backgroundColor: brand12 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand12 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand13 == false
                                        ? brand13 = true
                                        : brand13 = false;
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
                                  backgroundColor: brand13 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand13 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand14 == false
                                        ? brand14 = true
                                        : brand14 = false;
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
                                  backgroundColor: brand14 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand14 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand15 == false
                                        ? brand15 = true
                                        : brand15 = false;
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
                                  backgroundColor: brand15 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand15 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand16 == false
                                        ? brand16 = true
                                        : brand16 = false;
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
                                  backgroundColor: brand16 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand16 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand17 == false
                                        ? brand17 = true
                                        : brand17 = false;
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
                                  backgroundColor: brand17 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand17 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand18 == false
                                        ? brand18 = true
                                        : brand18 = false;
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
                                  backgroundColor: brand18 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand18 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand19 == false
                                        ? brand19 = true
                                        : brand19 = false;
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
                                  backgroundColor: brand19 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand19 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand20 == false
                                        ? brand20 = true
                                        : brand20 = false;
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
                                  backgroundColor: brand20 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand20 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand21 == false
                                        ? brand21 = true
                                        : brand21 = false;
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
                                  backgroundColor: brand21 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand21 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                                    brand22 == false
                                        ? brand22 = true
                                        : brand22 = false;
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
                                  backgroundColor: brand22 == true
                                      ? Colors.black
                                      : Colors.white,
                                  foregroundColor: brand22 == true
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                ),
                                child: const Text(
                                  'BRAND',
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
                              onPressed: () {},
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
