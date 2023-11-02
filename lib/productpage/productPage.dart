import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motoroctane/BrandPage/Components/News.dart';
import 'package:motoroctane/BrandPage/Components/phase4.dart';
import 'package:motoroctane/LandingPage/Widgets/comperison.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseSecond.dart';
import 'package:motoroctane/productpage/widgets/button4.dart';
import 'package:motoroctane/productpage/widgets/comperisonproduct.dart';
import 'package:motoroctane/productpage/widgets/myShortlist.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<String> cons = [
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
  ];

  List<String> pros = [
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design",
    "Styling Exterior And interior Design"
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(),
        key: _scaffoldKey,
        // backgroundColor: Colors.grey.shade300,
        appBar: HeaderAlltest(
          appBar: AppBar(),
          drawerr: drawww,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // width: 90,
                      child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   set1 = true;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(),
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                                fontSize: 10),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade700,
                          ),
                          child: const Text(
                            'OVERVIEW',
                          )),
                    ),
                    const SizedBox(width: 3),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   set1 = false;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "Montserrat",
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade700,
                          ),
                          child: const Text(
                            'SPEC',
                          )),
                    ),
                    const SizedBox(width: 3),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   set1 = false;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "Montserrat",
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade700,
                          ),
                          child: const Text(
                            'IMAGES',
                          )),
                    ),
                    const SizedBox(width: 3),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   set1 = false;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "Montserrat",
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade700,
                          ),
                          child: const Text(
                            'VIDEOS',
                          )),
                    ),
                    const SizedBox(width: 3),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // setState(() {
                            //   set1 = false;
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(),
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "Montserrat",
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade700,
                          ),
                          child: const Text(
                            'FEATURES',
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        // setState(() {
                        //   cat08 = true;
                        //   cat15 = false;
                        //   cat25 = false;
                        //   cat50 = false;
                        //   catA50 = false;

                        //   size08 = true;
                        //   size15 = false;
                        //   size25 = false;
                        //   size50 = false;
                        //   sizeA50 = false;
                        // });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.11,
                        width: height * 0.11,
                        color: const Color.fromARGB(255, 147, 20, 20),
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.012),
                          child: Column(
                            children: [
                              Text(
                                "#1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 26),
                              ),
                              Text(
                                "SALES RANKING",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                        size: Size(1.5, 65),
                        painter: DashedLineVerticalPainter()),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.10,
                        width: height * 0.10,
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.014),
                          child: Column(
                            children: [
                              Text(
                                "300",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 21),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "DEALERS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 9),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                        size: Size(1.5, 65),
                        painter: DashedLineVerticalPainter()),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.10,
                        width: height * 0.10,
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.014),
                          child: Column(
                            children: [
                              Text(
                                "1000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20),
                              ),
                              // SizedBox(
                              //   height: 6,
                              // ),
                              Text(
                                "SERVICE CENTRES",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 9),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                        size: Size(1.5, 65),
                        painter: DashedLineVerticalPainter()),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.10,
                        width: height * 0.10,
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.014),
                          child: Column(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "VARIENTS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 9),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.022),
                            child: Container(
                              width: double.infinity,
                              height: height * 0.5,
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                controller: _controller,
                                // shrinkWrap: true,
                                itemBuilder: ((ctx, index) => InkWell(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                              )
                                            ]),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: height * 0.011,
                                            vertical: height * 0.006),
                                        padding: EdgeInsets.only(
                                          top: height * 0.0085,
                                          left: width * 0.032,
                                          right: width * 0.032,
                                        ),

                                        width: width * 0.91,
                                        // color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 171, 55, 58),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  6))),
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.020),
                                                  height: height * 0.022,
                                                  width: width * 0.10,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "4.2",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                height * 0.012),
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
                                                Row(
                                                  children: [
                                                    Text(
                                                      "MotorOcatane's Verdict: 4/5*",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "Montserrat",
                                                          color: Colors.grey,
                                                          fontSize: 9),
                                                    ),
                                                    Icon(
                                                      Icons.info,
                                                      color:
                                                          Colors.grey.shade600,
                                                      size: 14,
                                                    )
                                                  ],
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.share,
                                                      size: 20,
                                                    ),
                                                    Icon(
                                                      Icons.bookmark,
                                                      size: 20,
                                                      color:
                                                          Colors.grey.shade600,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Container(
                                              height: height * 0.24,
                                              // width: width * 0.4,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/image/landing/second.png',
                                                  ),
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
                                                      fontSize: height * 0.025,
                                                      letterSpacing: 1,
                                                      color:
                                                          Colors.grey.shade500,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "E-Class Cabriolet",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontFamily: 'Armstrong',
                                                      fontSize: height * 0.025,
                                                      letterSpacing: 1,
                                                      color: Color.fromARGB(
                                                          255, 171, 55, 58),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.007,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "₹ 2.8 - 15.5 Lakhs",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: height * 0.028,
                                                      letterSpacing: 1,
                                                      color: Color.fromARGB(
                                                          255, 171, 55, 58),
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "ON ROAD MUMBAI",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize:
                                                              height * 0.012,
                                                          letterSpacing: 0.4,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    Icon(
                                                      Icons.edit_square,
                                                      size: 15,
                                                      color: Color.fromARGB(
                                                          255, 171, 55, 58),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Container(),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .grey.shade700,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          6))),
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.020),
                                                      height: height * 0.024,
                                                      width: width * 0.275,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "VIEW PRICE BREAKUP",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize:
                                                                    height *
                                                                        0.012),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 24,
                                                      width: 132,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          // setState(() {
                                                          //   brand1 == false
                                                          //       ? brand1 = true
                                                          //       : brand1 = false;
                                                          // });
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape:
                                                              const RoundedRectangleBorder(),
                                                          minimumSize:
                                                              const Size
                                                                  .fromHeight(
                                                                  26),
                                                          textStyle:
                                                              const TextStyle(
                                                                  letterSpacing:
                                                                      1.2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontFamily:
                                                                      "Montserrat",
                                                                  fontSize: 9),
                                                          backgroundColor:
                                                              Colors.white,
                                                          foregroundColor:
                                                              Colors.grey
                                                                  .shade900,
                                                        ),
                                                        child: const Text(
                                                          'CHANGE CAR',
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 30),
                                                    SizedBox(
                                                      height: 24,
                                                      width: 140,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape:
                                                              const RoundedRectangleBorder(),
                                                          minimumSize:
                                                              const Size
                                                                  .fromHeight(
                                                                  26),
                                                          textStyle:
                                                              const TextStyle(
                                                                  letterSpacing:
                                                                      1.2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontFamily:
                                                                      "Montserrat",
                                                                  fontSize: 9),
                                                          backgroundColor:
                                                              Colors.white,
                                                          foregroundColor:
                                                              Colors.grey
                                                                  .shade900,
                                                        ),
                                                        child: const Text(
                                                          'SHARE A REVIEW',
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
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
                            height: height * 0.5,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                onPressed: () {
                                  // Use the controller to change the current page

                                  _controller.animateTo(
                                    position =
                                        position < 0 ? 0 : position - 300,
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
                            height: height * 0.5,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {
                                  // Use the controller to change the current page
                                  _controller.animateTo(
                                    position =
                                        position > 5 * 300 ? 0 : position + 344,
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
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              width: 3,
                              color: Color.fromARGB(255, 171, 55, 58),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          height: 55,
                          width: 450,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              icon: Container(
                                height: 40,
                                width: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/icons/pnblogo.jpeg",
                                    fit: BoxFit.cover,
                                    height: 160,
                                  ),
                                ),
                              ),
                              label: Text(
                                " EMI 7095/- ONWARDS  >",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 171, 55, 58),
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w800),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                            )
                          ]),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 120,
                      width: width * 0.2,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airline_seat_recline_extra_sharp,
                            color: Colors.grey.shade600,
                            size: height * 0.045,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Person",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                            )
                          ]),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 120,
                      width: width * 0.2,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_gas_station,
                            color: Colors.grey.shade600,
                            size: height * 0.045,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Petrol Diesal ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                            )
                          ]),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 120,
                      width: width * 0.2,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/transmission.svg',
                            color: Colors.grey.shade600,
                            width: width * 0.07,
                            height: width * 0.07,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Manual CVT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 2,
                            )
                          ]),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 120,
                      width: width * 0.2,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/forsafer.svg',
                            color: Colors.grey.shade700,
                            width: height * 0.05,
                            height: height * 0.05,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5 Person",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              YoutubeProduct(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                blurRadius: 2,
                              )
                            ]),
                        height: 200,
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pro's",
                                style: TextStyle(
                                    fontFamily: "Armstrong",
                                    color: Colors.grey.shade700,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                    itemCount: pros.length,
                                    itemBuilder: (context, index) => Column(
                                          children: [
                                            Text(
                                              "• ${pros[index]}",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            )
                                          ],
                                        )),
                              )
                            ],
                          ),
                        ),
                        // color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                blurRadius: 2,
                              )
                            ]),
                        height: 200,
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Con's",
                                style: TextStyle(
                                    fontFamily: "Armstrong",
                                    color: Colors.grey.shade700,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: cons.length,
                                    itemBuilder: (context, index) => Column(
                                          children: [
                                            Text(
                                              "• ${cons[index]}",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            )
                                          ],
                                        )),
                              )
                            ],
                          ),
                        ),
                        // color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'Armstrong',
                                fontSize: height * 0.026,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "FACT ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              TextSpan(
                                  text: 'FILE',
                                  style: TextStyle(color: Colors.red.shade900))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.remove_circle,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.grey.shade800,
                        ),
                        // borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "SUMMARY/ REVIEW/ ASLI TEST",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontFamily: "Montserrat",
                                fontSize: 12),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: const Color.fromARGB(255, 171, 55, 58),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                      // color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.grey.shade800,
                        ),
                        // borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Engine",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontFamily: "Montserrat",
                                fontSize: 12),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: const Color.fromARGB(255, 171, 55, 58),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                      // color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 2,
                          color: Colors.grey.shade800,
                        ),
                        // borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Warranty & Service",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontFamily: "Montserrat",
                                fontSize: 12),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: const Color.fromARGB(255, 171, 55, 58),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                      // color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ThirdPhaseBrand(),
              SizedBox(
                height: 20,
              ),
              News(),
              SizedBox(
                height: 20,
              ),
              myShortlist(),
              SizedBox(
                height: 20,
              ),
              ComparisonProduct(),
              SizedBox(
                height: 20,
              ),
              SecondPhase(),
              SizedBox(
                height: 20,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
