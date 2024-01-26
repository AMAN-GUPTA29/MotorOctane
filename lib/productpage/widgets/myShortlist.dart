import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motoroctane/productpage/productPage.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class myShortlist extends StatefulWidget {
  const myShortlist({super.key});

  @override
  State<myShortlist> createState() => _SecondPhaseState();
}

class _SecondPhaseState extends State<myShortlist> {
  ScrollController _controller = new ScrollController();
  double position = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    return Stack(
      children: [
        // Container(
        //   height: 300,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/image/genral/trackn.png"),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        Container(
          height: height * 0.52,
          child: Column(
            children: [
              Container(
                height: height * 0.16,
                color: Colors.grey.shade300,
              ),
              Container(
                height: height * 0.16,
                color: Colors.white,
              ),
              Container(
                height: height * 0.16,
                color: Colors.grey.shade400,
              )
            ],
          ),
        ),
        Container(
          height: height * 0.51,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.023),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'Armstrong',
                        fontSize: height * 0.026,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "MY ",
                          style: TextStyle(color: Colors.grey.shade600)),
                      TextSpan(
                          text: 'SHORTLIST',
                          style: TextStyle(color: Colors.red.shade900))
                    ],
                  ),
                ),
              ),

              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.017),
                  child: Container(
                    width: double.infinity,
                    height: height * 0.403,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      // shrinkWrap: true,
                      itemBuilder: ((ctx, index) => InkWell(
                            onTap: () {
                              // Navigator.pushAndRemoveUntil<dynamic>(
                              //     context,
                              //     MaterialPageRoute<dynamic>(
                              //       builder: (BuildContext context) =>
                              //           ProductPage(),
                              //     ),
                              //     (Route<dynamic> route) => false);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 4,
                                    )
                                  ]),
                              margin: EdgeInsets.all(height * 0.006),
                              padding: EdgeInsets.only(
                                top: height * 0.0085,
                                left: width * 0.029,
                                right: width * 0.029,
                              ),

                              width: width * 0.481,
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
                                          fontSize: height * 0.018,
                                          fontWeight: FontWeight.w900,
                                          color: const Color.fromARGB(
                                              255, 171, 55, 58),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.007,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.006),
                                            child: Text(
                                              "onwards",
                                              style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: height * 0.013,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Text(
                                            "Ex Showroom Price",
                                            style: TextStyle(
                                                fontSize: height * 0.008,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.008,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 171, 55, 58),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                        padding: EdgeInsets.only(
                                            left: width * 0.020),
                                        height: height * 0.019,
                                        width: width * 0.10,
                                        child: Row(
                                          children: [
                                            Text(
                                              "4.2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: height * 0.012),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: height * 0.014,
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      ),
                                      Icon(
                                        Icons.bookmark,
                                        size: height * 0.03,
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height * 0.126,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/landing/second.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.014,
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
                                            fontSize: height * 0.017,
                                            letterSpacing: 1,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "E-Class Cabriolet",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Armstrong',
                                            fontSize: height * 0.017,
                                            letterSpacing: 1,
                                            color: Color.fromARGB(
                                                255, 171, 55, 58),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.0152,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.012),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .airline_seat_recline_extra_sharp,
                                                  color: Colors.grey.shade600,
                                                  size: height * 0.023,
                                                ),
                                                SizedBox(
                                                  width: width * 0.017,
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
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Seater',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: width * 0.042,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/forsafer.svg',
                                                  color: Colors.grey.shade700,
                                                  width: height * 0.03,
                                                  height: height * 0.03,
                                                ),
                                                SizedBox(
                                                  width: width * 0.017,
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
                                                          fontSize:
                                                              height * 0.0125,
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
                                        height: height * 0.013,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.012),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.local_gas_station,
                                                  color: Colors.grey.shade600,
                                                  size: height * 0.024,
                                                ),
                                                SizedBox(
                                                  width: width * 0.017,
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
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Petrol',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: width * 0.056,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/transmission.svg',
                                                  color: Colors.grey.shade600,
                                                  width: width * 0.046,
                                                  height: width * 0.046,
                                                ),
                                                SizedBox(
                                                  width: width * 0.02,
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
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Manual',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Auto',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
                                                          color: Colors
                                                              .grey.shade600),
                                                    ),
                                                    Text(
                                                      'Manual',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height * 0.0125,
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
                  height: height * 0.403,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        // Use the controller to change the current page

                        _controller.animateTo(
                          position = position < 0 ? 0 : position - 200,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_sharp,
                        color: Colors.grey,
                        size: height * 0.025,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.403,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        // Use the controller to change the current page
                        _controller.animateTo(
                          position = position > 4 * 200 ? 0 : position + 200,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_sharp,
                        color: Colors.grey,
                        size: height * 0.025,
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
