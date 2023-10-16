import 'package:flutter/material.dart';
import 'package:motoroctane/AssistMe/AssistMepagefirst.dart';
import 'package:motoroctane/BrandPage/Components/companynameadd.dart';
import 'package:motoroctane/LandingPage/Widgets/News.dart';
import 'package:motoroctane/LandingPage/Widgets/comperison.dart';
import 'package:motoroctane/LandingPage/Widgets/crousal.dart';
import 'package:motoroctane/LandingPage/Widgets/crousalyoutube.dart';
import 'package:motoroctane/LandingPage/Widgets/fuelPrice.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseFirst.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseFourth.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/foundation.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseSecond.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseThird.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<CarsData> _registeredCars = [
    CarsData(
      title: 'First',
    ),
    CarsData(
      title: 'Second',
    ),
  ];

  var SearchedTitle;
  ScrollController _controller = new ScrollController();
  double position = 0;
  TextEditingController searchedText = TextEditingController();

  bool cat08 = true;
  bool cat15 = false;
  bool cat25 = false;
  bool cat50 = false;
  bool catA50 = false;

  bool size08 = true;
  bool size15 = false;
  bool size25 = false;
  bool size50 = false;
  bool sizeA50 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    bool draw = false;
    // void openWidget() {
    //   // if (draw == true) {
    //   print("here");
    //   _scaffoldKey.currentState?.openDrawer();
    //   // }
    // }

    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    // var draww = _scaffoldKey.currentState?.openDrawer();

    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(),
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("whatsapp");
            // _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset("assets/icons/whatsapp.png"),
        ),
        appBar: HeaderAlltest(
          appBar: AppBar(),
          drawerr: drawww,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/landing/landing.jpg',
                width: double.infinity,
                // height: height * 0.23,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'Armstrong',
                                height: height * 0.003,
                                fontSize: height * 0.028,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "FIND YOUR ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              TextSpan(
                                  text: 'PERFECT CAR',
                                  style: TextStyle(color: Colors.red.shade900))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.025, right: width * 0.025),
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    // shadowColor: Color.fromARGB(a, r, g, b),
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsetsDirectional.only(
                                        start: width * 0.0624,
                                        end: width * 0.0624),
                                  ),
                                  child: Text(
                                    'SEARCH',
                                    style: TextStyle(
                                        fontSize: width * 0.032,
                                        letterSpacing: width * 0.0053,
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AssistmeFirst()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsetsDirectional.only(
                                        start: width * 0.044,
                                        end: width * 0.044),
                                  ),
                                  child: Text(
                                    'ASSIST ME',
                                    style: TextStyle(
                                        fontSize: width * 0.032,
                                        letterSpacing: width * 0.0053,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsetsDirectional.only(
                                        start: width * 0.03, end: width * 0.03),
                                  ),
                                  child: Text(
                                    'CONSULT US',
                                    style: TextStyle(
                                        fontSize: width * 0.032,
                                        letterSpacing: width * 0.0053,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.026,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: width * 0.07, right: width * 0.07),
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: width * 0.059,
                                  right: width * 0.059,
                                  top: height * 0.003,
                                  bottom: height * 0.003,
                                ),
                                color: Colors.grey,
                                child: Container(
                                  color: Colors.white,
                                  height: height * 0.055,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0),
                                    child: SearchField(
                                      suggestions: _registeredCars
                                          .map((e) =>
                                              SearchFieldListItem(e.title,
                                                  item: e,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5, bottom: 0),
                                                    child: Text(e.title),
                                                  )))
                                          .toList(),
                                      searchInputDecoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          bottom: 0,
                                          left: width * 0.025,
                                        ),
                                        alignLabelWithHint: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () {
                                            print(searchedText.text);
                                          },
                                          splashColor:
                                              Color.fromARGB(0, 255, 255, 255),
                                          child: Container(
                                            height: 50,
                                            width: 40,
                                            color: Colors.black,
                                            child: ImageIcon(
                                              AssetImage(
                                                  "assets/icons/search.png"),
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      maxSuggestionsInViewPort: 10,
                                      controller: searchedText,
                                      onSearchTextChanged: (value) {
                                        setState(() {
                                          SearchedTitle = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.003,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.07),
                              child: Row(
                                children: [
                                  Text(
                                    "Eg:",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: width * 0.0342),
                                  ),
                                  Text(
                                    "Tata Nexon",
                                    style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: width * 0.0342),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: height * 0.54,
                              alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.only(left: width * 0.13),
                              child: Image.asset(
                                "assets/image/tyre/tirenew/tirer.png",
                                scale: 1.2,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.025,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            cat08 = true;
                                            cat15 = false;
                                            cat25 = false;
                                            cat50 = false;
                                            catA50 = false;

                                            size08 = true;
                                            size15 = false;
                                            size25 = false;
                                            size50 = false;
                                            sizeA50 = false;
                                          });
                                        },
                                        child: Container(
                                          height: size08 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          width: size08 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          color: cat08 == true
                                              ? const Color.fromARGB(
                                                  255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                size08 == true
                                                    ? height * 0.016
                                                    : height * 0.014),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "UNDER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size08 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size08 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "08",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size08 == true
                                                          ? height * 0.027
                                                          : height * 0.025,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size08 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "LAKHS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size08 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                )
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
                                        onTap: () {
                                          setState(() {
                                            cat08 = false;
                                            cat15 = true;
                                            cat25 = false;
                                            cat50 = false;
                                            catA50 = false;

                                            size08 = false;
                                            size15 = true;
                                            size25 = false;
                                            size50 = false;
                                            sizeA50 = false;
                                          });
                                        },
                                        child: Container(
                                          height: size15 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          width: size15 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          color: cat15 == true
                                              ? const Color.fromARGB(
                                                  255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                size15 == true
                                                    ? height * 0.016
                                                    : height * 0.014),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "UNDER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size15 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size15 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "15",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size15 == true
                                                          ? height * 0.027
                                                          : height * 0.025,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size15 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "LAKHS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size15 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                )
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
                                        onTap: () {
                                          setState(() {
                                            cat08 = false;
                                            cat15 = false;
                                            cat25 = true;
                                            cat50 = false;
                                            catA50 = false;

                                            size08 = false;
                                            size15 = false;
                                            size25 = true;
                                            size50 = false;
                                            sizeA50 = false;
                                          });
                                        },
                                        child: Container(
                                          height: size25 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          width: size25 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          color: cat25 == true
                                              ? Color.fromARGB(255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                size25 == true
                                                    ? height * 0.016
                                                    : height * 0.014),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "UNDER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size25 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size25 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "25",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size25 == true
                                                          ? height * 0.027
                                                          : height * 0.025,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size25 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "LAKHS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size25 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                )
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
                                        onTap: () {
                                          setState(() {
                                            cat08 = false;
                                            cat15 = false;
                                            cat25 = false;
                                            cat50 = true;
                                            catA50 = false;

                                            size08 = false;
                                            size15 = false;
                                            size25 = false;
                                            size50 = true;
                                            sizeA50 = false;
                                          });
                                        },
                                        child: Container(
                                          height: size50 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          width: size50 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          color: cat50 == true
                                              ? Color.fromARGB(255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                size50 == true
                                                    ? height * 0.016
                                                    : height * 0.014),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "UNDER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size50 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size50 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "50",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size50 == true
                                                          ? height * 0.027
                                                          : height * 0.025,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: size50 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "LAKHS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: size50 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                )
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
                                        onTap: () {
                                          setState(() {
                                            cat08 = false;
                                            cat15 = false;
                                            cat25 = false;
                                            cat50 = false;
                                            catA50 = true;

                                            size08 = false;
                                            size15 = false;
                                            size25 = false;
                                            size50 = false;
                                            sizeA50 = true;
                                          });
                                        },
                                        child: Container(
                                          height: sizeA50 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          width: sizeA50 == true
                                              ? height * 0.12
                                              : height * 0.105,
                                          color: catA50 == true
                                              ? Color.fromARGB(255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                sizeA50 == true
                                                    ? height * 0.016
                                                    : height * 0.014),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "ABOVE",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: sizeA50 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: sizeA50 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "50",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: sizeA50 == true
                                                          ? height * 0.027
                                                          : height * 0.025,
                                                      fontFamily: 'Armstrong'),
                                                ),
                                                SizedBox(
                                                  height: sizeA50 == true
                                                      ? height * 0.008
                                                      : height * 0.007,
                                                ),
                                                Text(
                                                  "LAKHS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: sizeA50 == true
                                                          ? height * 0.019
                                                          : height * 0.017,
                                                      fontFamily: 'Armstrong'),
                                                )
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
                                  height: height * 0.025,
                                ),
                                Stack(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.018),
                                    child: Container(
                                      width: double.infinity,
                                      height: height * 0.403,
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
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        blurRadius: 4,
                                                      )
                                                    ]),
                                                margin: EdgeInsets.all(
                                                    height * 0.006),
                                                padding: EdgeInsets.only(
                                                  top: height * 0.0085,
                                                  left: width * 0.032,
                                                  right: width * 0.032,
                                                ),

                                                width: width * 0.46,
                                                // color: Colors.white,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "₹ 1.04 *Lakhs",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontSize:
                                                                height * 0.018,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            color: const Color
                                                                .fromARGB(255,
                                                                171, 55, 58),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: width * 0.007,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: height *
                                                                          0.006),
                                                              child: Text(
                                                                "onwards",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Montserrat",
                                                                    fontSize:
                                                                        height *
                                                                            0.013,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade700),
                                                              ),
                                                            ),
                                                            Text(
                                                              "Ex Showroom Price",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.008,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
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
                                                              color: const Color
                                                                  .fromARGB(255,
                                                                  171, 55, 58),
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          6))),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: width *
                                                                      0.020),
                                                          height:
                                                              height * 0.019,
                                                          width: width * 0.10,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                "4.2",
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
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .white,
                                                                size: height *
                                                                    0.014,
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
                                                          color: Colors
                                                              .grey.shade700,
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Mercedes-Benz",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Armstrong',
                                                              fontSize: height *
                                                                  0.017,
                                                              letterSpacing: 1,
                                                              color: Colors.grey
                                                                  .shade600,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          "E-Class Cabriolet",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Armstrong',
                                                              fontSize: height *
                                                                  0.017,
                                                              letterSpacing: 1,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      171,
                                                                      55,
                                                                      58),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.0152,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: width *
                                                                      0.012),
                                                          child: Row(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .airline_seat_recline_extra_sharp,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    size: height *
                                                                        0.023,
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.017,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '5,7,8',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Seater',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: width *
                                                                    0.042,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    'assets/icons/forsafer.svg',
                                                                    color: Colors
                                                                        .grey
                                                                        .shade700,
                                                                    width:
                                                                        height *
                                                                            0.03,
                                                                    height:
                                                                        height *
                                                                            0.03,
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.017,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'NCAP NA*',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              height * 0.013,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: width *
                                                                      0.012),
                                                          child: Row(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .local_gas_station,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    size: height *
                                                                        0.024,
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.017,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Petrol',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Petrol',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Petrol',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Petrol',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: width *
                                                                    0.056,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    'assets/icons/transmission.svg',
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    width: width *
                                                                        0.046,
                                                                    height:
                                                                        width *
                                                                            0.046,
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        width *
                                                                            0.02,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Auto',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Manual',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Auto',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      ),
                                                                      Text(
                                                                        'Manual',
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize: height *
                                                                                0.0125,
                                                                            color:
                                                                                Colors.grey.shade600),
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
                                            position = position < 0
                                                ? 0
                                                : position - 200,
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
                                            position = position > 4 * 200
                                                ? 0
                                                : position + 200,
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
                              ],
                            ),
                          ],
                        ),
                        //
                      ],
                    ),
                  ),
                ],
              ),
              Stack(children: [
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  padding: EdgeInsets.only(left: 165, bottom: 70),
                  child: Image.asset(
                    "assets/image/tyre/tirenew/tirer.png",
                    fit: BoxFit.cover,
                    color: Colors.grey.shade400,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      FuelPrice(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SecondPhase(),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: height * 0.02,
              ),
              PhaseThird(),
              SizedBox(
                height: height * 0.03,
              ),
              PhaseFourth(),
              SizedBox(
                height: 20,
              ),
              Comparison(),
              SizedBox(
                height: 20,
              ),
              Crousal(),
              SizedBox(
                height: 12,
              ),
              Stack(
                children: [
                  Container(
                    height: 500,
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(left: 40),
                    child: Image.asset(
                      "assets/image/tyre/tirenew/tirer.png",
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CrousalYoutube(),
                        SizedBox(
                          height: 20,
                        ),
                        News(),
                      ],
                    ),
                  ),
                ],
              ),
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
