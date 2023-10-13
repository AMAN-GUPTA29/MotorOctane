import 'package:flutter/material.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class SecondPhaseBrand extends StatefulWidget {
  const SecondPhaseBrand({super.key});

  @override
  State<SecondPhaseBrand> createState() => _SecondPhaseState();
}

class _SecondPhaseState extends State<SecondPhaseBrand> {
  double position = 0;
  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/genral/trackn.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 390,
          child: Column(
            children: [
              Container(
                height: 130,
                color: Colors.grey.shade300,
              ),
              Container(
                height: 130,
                color: Colors.white,
              ),
              Container(
                height: 130,
                color: Colors.grey.shade400,
              )
            ],
          ),
        ),
        Container(
          height: 377,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Armstrong',
                        height: 1,
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "FEATURED ",
                          style: TextStyle(color: Colors.grey.shade600)),
                      TextSpan(
                          text: 'CARS',
                          style: TextStyle(color: Colors.red.shade900))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SignedSpacingRow(
                    spacing: -30.0,
                    stackingOrder: StackingOrder.firstOnTop,
                    children: [
                      ClipPath(
                        clipper: Clip1Clipper(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 140,
                            color: Colors.grey.shade700,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 18, left: 12),
                              child: Text(
                                "ALTERNATE CARS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: Clip2Clipper(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 150,
                            color: Colors.grey.shade600,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 29, right: 10),
                              child: Text(
                                "UPCOMING CARS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: Clip2Clipper(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 150,
                            color: Colors.grey.shade500,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 40),
                              child: Text(
                                "SAVED CARS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: Clip2Clipper(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 150,
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 35, right: 30),
                              child: Text(
                                "MY HISTORY",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    width: double.infinity,
                    height: 290,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      // shrinkWrap: true,
                      itemBuilder: ((ctx, index) => InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 4,
                                    )
                                  ]),
                              margin: EdgeInsets.all(5),
                              padding:
                                  EdgeInsets.only(top: 5, left: 10, right: 10),
                              height: 270,
                              width: 166,
                              // color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "₹ 1.04 *Lakhs",
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w900,
                                          color: const Color.fromARGB(
                                              255, 171, 55, 58),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: Text(
                                              "onwards",
                                              style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Text(
                                            "Ex Showroom Price",
                                            style: TextStyle(
                                                fontSize: 5,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 171, 55, 58),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                        padding: EdgeInsets.only(left: 7),
                                        height: 17,
                                        width: 37,
                                        child: Row(
                                          children: [
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 9),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 10,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 90,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/landing/second.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mercedes-Benz",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Armstrong',
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "E-Class Cabriolet",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Armstrong',
                                            fontSize: 12,
                                            letterSpacing: 1,
                                            color: Color.fromARGB(
                                                255, 171, 55, 58),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .airline_seat_recline_extra_sharp,
                                                  color: Colors.grey.shade600,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '5,7,8',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Seater',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.sick,
                                                  color: Colors.grey.shade600,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'NCAP NA*',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 9,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.local_gas_station,
                                                  color: Colors.grey.shade600,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 23,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .airline_seat_recline_extra_sharp,
                                                  color: Colors.grey.shade600,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Auto',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Manual',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Auto',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Manual',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
                Container(
                  height: 290,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        // Use the controller to change the current page

                        _controller.animateTo(
                          position = position - 200,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_sharp,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 290,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        // Use the controller to change the current page
                        _controller.animateTo(
                          position = position + 200,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_sharp,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ]),
              //
            ],
          ),
        )
      ],
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 30, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Clip2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 30, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
