import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motoroctane/BrandPage/Components/News.dart';
import 'package:motoroctane/BrandPage/Components/phase4.dart';
import 'package:motoroctane/LandingPage/Widgets/comperison.dart';
import 'package:motoroctane/LandingPage/Widgets/phaseSecond.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/productpage/widgets/broucherbutton.dart';
import 'package:motoroctane/productpage/widgets/button4.dart';
import 'package:motoroctane/productpage/widgets/comperisonproduct.dart';
import 'package:motoroctane/productpage/widgets/fetured.dart';
import 'package:motoroctane/productpage/widgets/myShortlist.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:motoroctane/widgets/landingpage/verticlespaceddash.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key, required this.id});

  String id;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> cons = [];

  List<String> pros = [];

  List<String> summarylist = [];

  var popularcarlist;
  var newcarlist;
  var upcomingcarlist;

  bool warranty = false;
  bool summary = false;
  bool engine = false;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ScrollController _controller = new ScrollController();

  double position = 0;

  @override
  void initState() {
    getproddata();

    super.initState();
  }

  bool loadingdata = false;

  var productdatacomp;

  void getproddata() async {
    setState(() {
      loadingdata = true;
    });

    try {
      var response =
          await Dio().get('http://137.184.91.38:5000/api/cars/${widget.id}');
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        setState(() {
          productdatacomp = response.data;
          // print(jsonList);
          print("*********************************");
          print("*********************************");
          print("*********************************");
          print(productdatacomp);

          print("*********************************");
          print(productdatacomp["keyF5text"]);
          print("*********************************");
          // print(landcarlist[0]["brand"]["name"]);

          // for (int i = 0; i < garbage.length; i++) {
          //   if (garbage[i]["price"] >= 100) {
          //     garbage2.add(garbage[i]);
          //   }
          // }

          // print(garbage2.length); // print(jsonList);
          // print(k);
          // print(garbage2);
        });
      }
    } catch (e) {
      setState(() {});
    }

    try {
      var response1 =
          await Dio().get('http://137.184.91.38:5000/api/cars/newest');
      if (response1.statusCode! >= 200 && response1.statusCode! <= 300) {
        setState(() {
          popularcarlist = response1.data;
          // print(jsonList);
          print("*************popular********************");
          print(popularcarlist.length);
          // print(landcarlist[64]);
          print("*********************************");
          // print(landcarlist[60]["seater"]);

          print("*********************************");
          // print(landcarlist[0]["brand"]["name"]);

          // for (int i = 0; i < garbage.length; i++) {
          //   if (garbage[i]["price"] >= 100) {
          //     garbage2.add(garbage[i]);
          //   }
          // }

          // print(garbage2.length); // print(jsonList);
          // print(k);
          // print(garbage2);
        });
      }
    } catch (e) {
      setState(() {});
    }

    try {
      var response2 =
          await Dio().get('http://137.184.91.38:5000/api/cars/newest');
      if (response2.statusCode! >= 200 && response2.statusCode! <= 300) {
        setState(() {
          newcarlist = response2.data;
          // print(jsonList);
          print("*************popular********************");
          print(newcarlist.length);
          // print(landcarlist[64]);
          print("*********************************");
          // print(landcarlist[60]["seater"]);

          print("*********************************");
          // print(landcarlist[0]["brand"]["name"]);

          // for (int i = 0; i < garbage.length; i++) {
          //   if (garbage[i]["price"] >= 100) {
          //     garbage2.add(garbage[i]);
          //   }
          // }

          // print(garbage2.length); // print(jsonList);
          // print(k);
          // print(garbage2);
        });
      }
    } catch (e) {
      setState(() {});
    }

    try {
      var response3 =
          await Dio().get('http://137.184.91.38:5000/api/cars/upcoming');
      if (response3.statusCode! >= 200 && response3.statusCode! <= 300) {
        setState(() {
          upcomingcarlist = response3.data;
          // print(jsonList);
          print("*************popular********************");
          print(upcomingcarlist.length);
          // print(landcarlist[64]);
          print("*********************************");
          // print(landcarlist[60]["seater"]);

          print("*********************************");
          // print(landcarlist[0]["brand"]["name"]);

          // for (int i = 0; i < garbage.length; i++) {
          //   if (garbage[i]["price"] >= 100) {
          //     garbage2.add(garbage[i]);
          //   }
          // }

          // print(garbage2.length); // print(jsonList);
          // print(k);
          // print(garbage2);
        });
      }
    } catch (e) {
      setState(() {});
    }

    setState(() {
      loadingdata = false;
    });

    pros = await split3(productdatacomp["pro"]);
    cons = await split3(productdatacomp["cons"]);
    summarylist = await split3(productdatacomp["aslisummary1"]);
  }

  String split(String string, {int max = 0}) {
    var result = <String>[];
    String separator = "</li>";
    String ans = "";

    if (string == "null") {
      return "null";
    }

    string = string
        .replaceAll("<ul>", "")
        .replaceAll("</ul>", "")
        .replaceAll("<li>", "");

    while (true) {
      var index = string.indexOf(separator, 0);
      if (index == -1 || (max > 0 && result.length >= max)) {
        result.add(string);
        break;
      }

      result.add(string.substring(0, index));
      string = string.substring(index + separator.length);
    }

    result.removeLast();

    print(result);

    ans = json.encode(result);

    ans = ans.replaceAll("[", "").replaceAll("]", "").replaceAll('"', "");
    // print("*****111376889090-****************************");
    // print(ans);
    // print("*****111376889090-****************************");
    return ans;
  }

  String split2(String string, {int max = 0}) {
    var result = <String>[];
    String separator = "</li>";
    String ans = "";

    if (string == "null") {
      return "null";
    }

    string = string
        .replaceAll("<ul>", "")
        .replaceAll("</ul>", "")
        .replaceAll("<li>", "");

    while (true) {
      var index = string.indexOf(separator, 0);
      if (index == -1 || (max > 0 && result.length >= max)) {
        result.add(string);
        break;
      }

      result.add(string.substring(0, index));
      string = string.substring(index + separator.length);
    }

    result.removeLast();

    print(result);

    ans = json.encode(result);

    ans = ans
        .replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll('"', "")
        .replaceAll(',', " ");
    // print("*****111376889090-****************************");
    // print(ans);
    // print("*****111376889090-****************************");
    return ans;
  }

  List<String> split3(String string, {int max = 0}) {
    var result = <String>[];
    String separator = "</li>";

    string = string
        .replaceAll("<ul>", "")
        .replaceAll("</ul>", "")
        .replaceAll("<li>", "");

    if (separator.isEmpty) {
      result.add(string);
      return result;
    }

    while (true) {
      var index = string.indexOf(separator, 0);
      if (index == -1 || (max > 0 && result.length >= max)) {
        result.add(string);
        break;
      }

      result.add(string.substring(0, index));
      string = string.substring(index + separator.length);
    }

    result.removeLast();

    return result;
  }

  final OverlayPortalController _summaryController = OverlayPortalController();
  final OverlayPortalController _engineController = OverlayPortalController();

  final OverlayPortalController _keyController1 = OverlayPortalController();
  final OverlayPortalController _keyController2 = OverlayPortalController();
  final OverlayPortalController _keyController3 = OverlayPortalController();
  final OverlayPortalController _keyController4 = OverlayPortalController();
  final OverlayPortalController _keyController5 = OverlayPortalController();
  final OverlayPortalController _keyController6 = OverlayPortalController();
  final OverlayPortalController _keyController7 = OverlayPortalController();
  final OverlayPortalController _keyController8 = OverlayPortalController();
  final OverlayPortalController _keyController9 = OverlayPortalController();
  final OverlayPortalController _keyController10 = OverlayPortalController();
  final OverlayPortalController _keyController11 = OverlayPortalController();
  final OverlayPortalController _keyController12 = OverlayPortalController();
  final OverlayPortalController _keyController13 = OverlayPortalController();
  final OverlayPortalController _keyController14 = OverlayPortalController();
  final OverlayPortalController _keyController15 = OverlayPortalController();
  final OverlayPortalController _keyController16 = OverlayPortalController();
  final OverlayPortalController _keyController17 = OverlayPortalController();
  final OverlayPortalController _keyController18 = OverlayPortalController();
  final OverlayPortalController _keyController19 = OverlayPortalController();
  final OverlayPortalController _keyController20 = OverlayPortalController();
  final OverlayPortalController _spaceController1 = OverlayPortalController();
  final OverlayPortalController _spaceController2 = OverlayPortalController();
  final OverlayPortalController _spaceController3 = OverlayPortalController();
  final OverlayPortalController _spaceController4 = OverlayPortalController();
  final OverlayPortalController _spaceController5 = OverlayPortalController();
  final OverlayPortalController _spaceController6 = OverlayPortalController();
  final OverlayPortalController _spaceController7 = OverlayPortalController();
  final OverlayPortalController _spaceController8 = OverlayPortalController();
  final OverlayPortalController _spaceController9 = OverlayPortalController();
  final OverlayPortalController _spaceController10 = OverlayPortalController();
  final OverlayPortalController _spaceController11 = OverlayPortalController();
  final OverlayPortalController _spaceController12 = OverlayPortalController();
  final OverlayPortalController _spaceController13 = OverlayPortalController();
  final OverlayPortalController _spaceController14 = OverlayPortalController();
  final OverlayPortalController _spaceController15 = OverlayPortalController();
  final OverlayPortalController _spaceController16 = OverlayPortalController();
  final OverlayPortalController _spaceController17 = OverlayPortalController();
  final OverlayPortalController _spaceController18 = OverlayPortalController();
  final OverlayPortalController _spaceController19 = OverlayPortalController();
  final OverlayPortalController _spaceController20 = OverlayPortalController();
  final OverlayPortalController _storageController1 = OverlayPortalController();
  final OverlayPortalController _storageController2 = OverlayPortalController();
  final OverlayPortalController _storageController3 = OverlayPortalController();
  final OverlayPortalController _storageController4 = OverlayPortalController();
  final OverlayPortalController _storageController5 = OverlayPortalController();
  final OverlayPortalController _storageController6 = OverlayPortalController();
  final OverlayPortalController _storageController7 = OverlayPortalController();
  final OverlayPortalController _storageController8 = OverlayPortalController();
  final OverlayPortalController _storageController9 = OverlayPortalController();
  final OverlayPortalController _storageController10 =
      OverlayPortalController();
  final OverlayPortalController _storageController11 =
      OverlayPortalController();
  final OverlayPortalController _storageController12 =
      OverlayPortalController();
  final OverlayPortalController _storageController13 =
      OverlayPortalController();
  final OverlayPortalController _storageController14 =
      OverlayPortalController();
  final OverlayPortalController _storageController15 =
      OverlayPortalController();
  final OverlayPortalController _storageController16 =
      OverlayPortalController();
  final OverlayPortalController _storageController17 =
      OverlayPortalController();
  final OverlayPortalController _storageController18 =
      OverlayPortalController();
  final OverlayPortalController _storageController19 =
      OverlayPortalController();
  final OverlayPortalController _storageController20 =
      OverlayPortalController();

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
        child: loadingdata == true
            ? Scaffold(
                body: Center(
                  child: CircularProgressIndicator(color: Colors.red),
                ),
              )
            : Scaffold(
                drawer: NavDrawer(),
                key: _scaffoldKey,
                // backgroundColor: Colors.grey.shade300,
                appBar: HeaderAlltest(
                  appBar: AppBar(),
                  drawerr: drawww,
                ),
                floatingActionButton: DraggableFab(
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      print("whatsapp");
                      // _scaffoldKey.currentState?.openDrawer();
                    },
                    child: Image.asset("assets/icons/whatsapp.png"),
                  ),
                ),
                body: Stack(children: [
                  SingleChildScrollView(
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
                                      padding:
                                          EdgeInsets.only(left: width * 0.022),
                                      child: Container(
                                        width: double.infinity,
                                        height: height * 0.5,
                                        child: ListView.builder(
                                          itemCount: 1,
                                          scrollDirection: Axis.horizontal,
                                          controller: _controller,
                                          // shrinkWrap: true,
                                          itemBuilder: ((ctx, index) => InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.5),
                                                          blurRadius: 4,
                                                        )
                                                      ]),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal:
                                                          height * 0.011,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            6))),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.020),
                                                            height:
                                                                height * 0.022,
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
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "MotorOcatane's Verdict: ${productdatacomp["movrating"]}/5*",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Montserrat",
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        9),
                                                              ),
                                                              Icon(
                                                                Icons.info,
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
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
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
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
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(
                                                                "http://137.184.91.38:5000/productImages/${productdatacomp["heroimage"]}"),
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
                                                            "${productdatacomp["brand"]["name"]}",
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Armstrong',
                                                                fontSize:
                                                                    height *
                                                                        0.025,
                                                                letterSpacing:
                                                                    1,
                                                                color: Colors
                                                                    .grey
                                                                    .shade500,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "${productdatacomp["carname"]}",
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Armstrong',
                                                                fontSize:
                                                                    height *
                                                                        0.025,
                                                                letterSpacing:
                                                                    1,
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
                                                        height: height * 0.007,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "₹ 2.8 - 15.5 Lakhs",
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize:
                                                                    height *
                                                                        0.028,
                                                                letterSpacing:
                                                                    1,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        171,
                                                                        55,
                                                                        58),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "ex showroom price",
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        height *
                                                                            0.012,
                                                                    letterSpacing:
                                                                        0.4,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800),
                                                              ),
                                                              SizedBox(
                                                                width: 4,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .edit_square,
                                                                size: 15,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        171,
                                                                        55,
                                                                        58),
                                                              ),
                                                              Expanded(
                                                                flex: 1,
                                                                child:
                                                                    Container(),
                                                              ),
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade700,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(6))),
                                                                padding: EdgeInsets.only(
                                                                    left: width *
                                                                        0.020),
                                                                height: height *
                                                                    0.024,
                                                                width: width *
                                                                    0.275,
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      "VIEW PRICE BREAKUP",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              height * 0.012),
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
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {
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
                                                                    textStyle: const TextStyle(
                                                                        letterSpacing:
                                                                            1.2,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontFamily:
                                                                            "Montserrat",
                                                                        fontSize:
                                                                            9),
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    foregroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade900,
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                    'CHANGE CAR',
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  width: 30),
                                                              SizedBox(
                                                                height: 24,
                                                                width: 140,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    shape:
                                                                        const RoundedRectangleBorder(),
                                                                    minimumSize:
                                                                        const Size
                                                                            .fromHeight(
                                                                            26),
                                                                    textStyle: const TextStyle(
                                                                        letterSpacing:
                                                                            1.2,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontFamily:
                                                                            "Montserrat",
                                                                        fontSize:
                                                                            9),
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    foregroundColor:
                                                                        Colors
                                                                            .grey
                                                                            .shade900,
                                                                  ),
                                                                  child:
                                                                      const Text(
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
                                              position = position < 0
                                                  ? 0
                                                  : position - 300,
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
                                              position = position > 5 * 300
                                                  ? 0
                                                  : position + 344,
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 10),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                              color: Color.fromARGB(
                                                  255, 171, 55, 58),
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
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
                                      "${split(productdatacomp["seater"] == null ? "null" : productdatacomp["seater"])}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12,
                                          fontFamily: "Montserrat"),
                                    ),
                                    Text(
                                      "Seater",
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
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
                                      "${split2(productdatacomp["fueltype"] == null ? "null" : productdatacomp["fueltype"])}",
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 4),
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
                                      "${split2(productdatacomp["transmissiontype"] == null ? "null" : productdatacomp["transmissiontype"])}",
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
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
                                      "${productdatacomp["NCAP"]} Star Rating",
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          width: 220,
                                          height: 150,
                                          child: ListView.builder(
                                              itemCount: pros.length,
                                              itemBuilder: (context, index) =>
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "• ${pros[index]}",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade700,
                                                            fontFamily:
                                                                "Montserrat",
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          width: 220,
                                          height: 150,
                                          child: ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemCount: cons.length,
                                              itemBuilder: (context, index) =>
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "• ${cons[index]}",
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade700,
                                                            fontFamily:
                                                                "Montserrat",
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
                                            style: TextStyle(
                                                color: Colors.grey.shade600)),
                                        TextSpan(
                                            text: 'FILE',
                                            style: TextStyle(
                                                color: Colors.red.shade900))
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
                                child: OverlayPortal(
                                  controller: _summaryController,
                                  overlayChildBuilder: (BuildContext context) {
                                    return Center(
                                        child: Container(
                                      padding: EdgeInsets.all(20),
                                      width: width * 0.9,
                                      height: height * 0.75,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey
                                                    .shade600, // Set border color
                                                width: 2.0, // Set border width
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      0.0), // Set border radius
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(7),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Text(
                                                    "SUMMARY/ REVIEW/ ASLI TEST",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 12),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _summaryController
                                                            .toggle();

                                                        summary == false
                                                            ? summary = true
                                                            : summary = false;
                                                      });
                                                    },
                                                    child: summary == true
                                                        ? Icon(
                                                            Icons
                                                                .remove_circle_outlined,
                                                            color: Colors.grey,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .add_circle_outlined,
                                                            color: const Color
                                                                .fromARGB(255,
                                                                171, 55, 58),
                                                          ),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.03,
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Armstrong',
                                                          fontSize:
                                                              height * 0.026,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: "ASLI ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600)),
                                                        TextSpan(
                                                            text: 'TEST',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .red
                                                                    .shade900))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Text(
                                                  "${productdatacomp["asliheader1"]}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: height * 0.04,
                                                ),
                                                Container(
                                                  width: 220,
                                                  // height: 250,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "${productdatacomp["aslisummary1"]}",
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 7,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                                  },
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
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _summaryController.toggle();

                                            summary == false
                                                ? summary = true
                                                : summary = false;
                                          });
                                        },
                                        child: summary == true
                                            ? Icon(
                                                Icons.remove_circle_outlined,
                                                color: Colors.grey,
                                              )
                                            : Icon(
                                                Icons.add_circle_outlined,
                                                color: const Color.fromARGB(
                                                    255, 171, 55, 58),
                                              ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                    ],
                                  ),
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
                                child: OverlayPortal(
                                  controller: _engineController,
                                  overlayChildBuilder: (BuildContext context) {
                                    return Center(
                                        child: Container(
                                      padding: EdgeInsets.all(20),
                                      width: width * 0.9,
                                      height: height * 0.8,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey
                                                    .shade600, // Set border color
                                                width: 2.0, // Set border width
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      0.0), // Set border radius
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(7),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Text(
                                                    "Engine",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 12),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _engineController
                                                            .toggle();

                                                        engine == false
                                                            ? engine = true
                                                            : engine = false;
                                                      });
                                                    },
                                                    child: engine == true
                                                        ? Icon(
                                                            Icons
                                                                .remove_circle_outlined,
                                                            color: Colors.grey,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .add_circle_outlined,
                                                            color: const Color
                                                                .fromARGB(255,
                                                                171, 55, 58),
                                                          ),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.03,
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .grey.shade300),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.2),
                                                            blurRadius: 5.0,
                                                            offset: Offset(
                                                                0.0, 3.0))
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20))),
                                                  // height: height * 0.4,
                                                  width: double.maxFinite,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 15),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: RichText(
                                                            textAlign:
                                                                TextAlign.start,
                                                            text: TextSpan(
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Armstrong',
                                                                  fontSize:
                                                                      height *
                                                                          0.026,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                              children: <TextSpan>[
                                                                TextSpan(
                                                                    text:
                                                                        "${productdatacomp["engineh1"]} ",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red
                                                                            .shade900)),
                                                                TextSpan(
                                                                    text:
                                                                        '${productdatacomp["engineh2"]}',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade600))
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          "${productdatacomp["enginesummary1"]}",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Montserrat",
                                                              fontSize: 12),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                  "AT",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          "Montserrat",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Container(
                                                                  width: 70,
                                                                  child: Text(
                                                                    "${productdatacomp["engineauto1"]}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            CustomPaint(
                                                                size: Size(
                                                                    3, 100),
                                                                painter:
                                                                    DashedLineVerticalSpacedPainter()),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                  "iMT",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          "Montserrat",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Container(
                                                                  width: 70,
                                                                  child: Text(
                                                                    "${productdatacomp["engineimt1"]}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            CustomPaint(
                                                                size: Size(
                                                                    3, 100),
                                                                painter:
                                                                    DashedLineVerticalSpacedPainter()),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Text(
                                                                  "Manual",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          "Montserrat",
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                                SizedBox(
                                                                  height: 5,
                                                                ),
                                                                Container(
                                                                  width: 70,
                                                                  child: Text(
                                                                    "${productdatacomp["enginemanual1"]}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                //second

                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                                  },
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
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _engineController.toggle();

                                            engine == false
                                                ? engine = true
                                                : engine = false;
                                          });
                                        },
                                        child: engine == true
                                            ? Icon(
                                                Icons.remove_circle_outlined,
                                                color: Colors.grey,
                                              )
                                            : Icon(
                                                Icons.add_circle_outlined,
                                                color: const Color.fromARGB(
                                                    255, 171, 55, 58),
                                              ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                    ],
                                  ),
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
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          warranty == false
                                              ? warranty = true
                                              : warranty = false;
                                        });
                                      },
                                      child: warranty == true
                                          ? Icon(
                                              Icons.remove_circle_outlined,
                                              color: Colors.grey,
                                            )
                                          : Icon(
                                              Icons.add_circle_outlined,
                                              color: const Color.fromARGB(
                                                  255, 171, 55, 58),
                                            ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                                // color: Colors.black,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              warranty == false
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Colors.grey.shade300),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 5.0,
                                                  offset: Offset(0.0, 3.0)),
                                            ],
                                          ),
                                          child: Container(
                                            padding:
                                                EdgeInsets.all(width * 0.035),
                                            height: height * 0.21,
                                            width: width - 60,
                                            child: Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      height: height * 0.085,
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      child: Center(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Standard ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                          Text(
                                                            "Warrenty",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                    Container(
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      height: height * 0.085,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            width * 0.016),
                                                        child: Center(
                                                          child: Text(
                                                            "${productdatacomp["standard"]} ",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      height: height * 0.085,
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      child: Center(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Extended ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                          Text(
                                                            "Warrenty",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                    Container(
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      height: height * 0.085,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      child: Center(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    width *
                                                                        0.016),
                                                            child: Text(
                                                              "${productdatacomp["extended"]} ",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      height: height * 0.085,
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      child: Center(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Service ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                          Text(
                                                            "Interval",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                    Container(
                                                      width: (width -
                                                              (60 +
                                                                  width * 0.07 +
                                                                  (6 *
                                                                      (width *
                                                                          0.003)))) /
                                                          3,
                                                      height: height * 0.085,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.red,
                                                              width: width *
                                                                  0.006)),
                                                      child: Center(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    width *
                                                                        0.016),
                                                            child: Text(
                                                              "${productdatacomp["extended"]} ",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )),
                                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              // height: height * 1.1,
                              width: double.maxFinite,
                              color: Colors.grey.shade400,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.022,
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                width: 3,
                                                color: Colors.grey.shade600)),
                                      ),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0),
                                            child: SingleChildScrollView(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              child: SignedSpacingRow(
                                                spacing: -30.0,
                                                stackingOrder:
                                                    StackingOrder.firstOnTop,
                                                children: [
                                                  ClipPath(
                                                    clipper: Clip1Clipper(),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: height * 0.053,
                                                        width: width * 0.6,
                                                        color: Colors
                                                            .grey.shade600,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: width *
                                                                      0.06),
                                                          child: Text(
                                                            "KEY FEATURES                   ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                    height *
                                                                        0.018,
                                                                fontFamily:
                                                                    'Montserrat'),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: width * 0.7,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "keyF1text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController1
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController1,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController1
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF2text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController2
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController2,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController2
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF3text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController3
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController3,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController3
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF4text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController4
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController4,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController4
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF5text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController5
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController5,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController5
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF6text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController6
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController6,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController6
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF7text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController7
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController7,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController7
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF8text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController8
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController8,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController8
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF9text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController9
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController9,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController9
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF10text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController10
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController10,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController10
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF11text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController11
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController11,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController11
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF12text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController12
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController12,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController12
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF13text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController13
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController13,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController13
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF14text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController14
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController14,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController14
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF15text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController15
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController15,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController15
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF16text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController16
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController16,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController16
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF17text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController17
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController17,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController17
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF18text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController18
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController18,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController18
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF19text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController19
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController19,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController19
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF19"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF19"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "keyF20text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _keyController20
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _keyController20,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _keyController20
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["keyF20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "keyF1text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF1text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF2text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF2text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF3text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF3text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF4text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF4text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF5text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF5text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF6text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16ext"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF7text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF7text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF8text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF8text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF9text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF9text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF10text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF10text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF11text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF11text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF12text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF12text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF13text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF13text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF14text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF14text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF15text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF15text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF16text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF17text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF17text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF18text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF18text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF19text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF19text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF20text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF20text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
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
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                width: 3,
                                                color: Colors.grey.shade600)),
                                      ),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0),
                                            child: SingleChildScrollView(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              child: SignedSpacingRow(
                                                spacing: -30.0,
                                                stackingOrder:
                                                    StackingOrder.firstOnTop,
                                                children: [
                                                  ClipPath(
                                                    clipper: Clip1Clipper(),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: height * 0.053,
                                                        width: width * 0.6,
                                                        color: Colors
                                                            .grey.shade600,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: width *
                                                                      0.06),
                                                          child: Text(
                                                            "SPACE & COMFORTS         ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                    height *
                                                                        0.018,
                                                                fontFamily:
                                                                    'Montserrat'),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: width * 0.7,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "spaceC1text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController1
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController1,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController1
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC2text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController2
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController2,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController2
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC3text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController3
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController3,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController3
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC4text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController4
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController4,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController4
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC5text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController5
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController5,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController5
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC6text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController6
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController6,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController6
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC7text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController7
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController7,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController7
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC8text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController8
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController8,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController8
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC9text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController9
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController9,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController9
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC10text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController10
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController10,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController10
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC11text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController11
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController11,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController11
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC12text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController12
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController12,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController12
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC13text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController13
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController13,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController13
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC14text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController14
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController14,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController14
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC15text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController15
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController15,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController15
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC16text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController16
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController16,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController16
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC17text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController17
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController17,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController17
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC18text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController18
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController18,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController18
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC19text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController19
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController19,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController19
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC19"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC19"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "spaceC20text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _spaceController20
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _spaceController20,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _spaceController20
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["spaceC20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "keyF1text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF1text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF2text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF2text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF3text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF3text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF4text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF4text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF5text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF5text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF6text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16ext"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF7text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF7text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF8text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF8text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF9text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF9text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF10text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF10text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF11text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF11text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF12text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF12text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF13text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF13text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF14text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF14text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF15text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF15text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF16text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF17text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF17text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF18text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF18text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF19text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF19text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF20text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF20text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
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
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                width: 3,
                                                color: Colors.grey.shade600)),
                                      ),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0),
                                            child: SingleChildScrollView(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              child: SignedSpacingRow(
                                                spacing: -30.0,
                                                stackingOrder:
                                                    StackingOrder.firstOnTop,
                                                children: [
                                                  ClipPath(
                                                    clipper: Clip1Clipper(),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: height * 0.053,
                                                        width: width * 0.6,
                                                        color: Colors
                                                            .grey.shade600,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: width *
                                                                      0.06),
                                                          child: Text(
                                                            "STORAGE & CONVIENCE   ",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                    height *
                                                                        0.018,
                                                                fontFamily:
                                                                    'Montserrat'),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: width * 0.7,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "storageC1text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController1
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController1,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController1
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC1"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC2text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController2
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController2,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController2
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC2"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC3text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController3
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController3,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController3
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC3"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC4text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController4
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController4,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController4
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC4"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC5text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController5
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController5,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController5
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC5"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC6text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController6
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController6,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController6
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC6"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC7text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController7
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController7,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController7
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC7"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC8text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController8
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController8,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController8
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC8"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC9text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController9
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController9,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController9
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC9"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC10text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController10
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController10,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController10
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC10"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC11text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController11
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController11,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController11
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC11"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC12text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController12
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController12,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController12
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC12"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC13text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController13
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController13,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController13
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC13"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC14text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController14
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController14,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController14
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC14"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC15text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController15
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController15,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController15
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC15"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC16text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController16
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController16,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController16
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC16"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC17text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController17
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController17,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController17
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC17"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        productdatacomp[
                                                                    "storageC18text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController18
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController18,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController18
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC18"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                        // productdatacomp[
                                                        //             "storageC19text"] ==
                                                        //         ""
                                                        //     ? Container()
                                                        //     : InkWell(
                                                        //         onTap: () {
                                                        //           _storageController19
                                                        //               .toggle();
                                                        //         },
                                                        //         child:
                                                        //             OverlayPortal(
                                                        //           controller:
                                                        //               _storageController19,
                                                        //           overlayChildBuilder:
                                                        //               (BuildContext
                                                        //                   context) {
                                                        //             return InkWell(
                                                        //               onTap:
                                                        //                   () {
                                                        //                 _storageController19
                                                        //                     .toggle();
                                                        //               },
                                                        //               child: Center(
                                                        //                   child: Container(
                                                        //                 height: height *
                                                        //                     0.4,
                                                        //                 width: width *
                                                        //                     0.8,
                                                        //                 color: Colors
                                                        //                     .white,
                                                        //                 child: Image
                                                        //                     .network(
                                                        //                   "http://137.184.91.38:5000/productImages/${productdatacomp["storageC19"]}",
                                                        //                   fit: BoxFit
                                                        //                       .cover,
                                                        //                 ),
                                                        //               )),
                                                        //             );
                                                        //           },
                                                        //           child: Row(
                                                        //             children: [
                                                        //               Container(
                                                        //                 clipBehavior:
                                                        //                     Clip.antiAlias,
                                                        //                 decoration:
                                                        //                     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                        //                 height: height *
                                                        //                     0.2,
                                                        //                 width: width *
                                                        //                     0.43,
                                                        //                 child: Image
                                                        //                     .network(
                                                        //                   "http://137.184.91.38:5000/productImages/${productdatacomp["storageC19"]}",
                                                        //                   fit: BoxFit
                                                        //                       .cover,
                                                        //                 ),
                                                        //               ),
                                                        //               SizedBox(
                                                        //                 width:
                                                        //                     10,
                                                        //               )
                                                        //             ],
                                                        //           ),
                                                        //         ),
                                                        //       ),
                                                        productdatacomp[
                                                                    "storageC20text"] ==
                                                                ""
                                                            ? Container()
                                                            : InkWell(
                                                                onTap: () {
                                                                  _storageController20
                                                                      .toggle();
                                                                },
                                                                child:
                                                                    OverlayPortal(
                                                                  controller:
                                                                      _storageController20,
                                                                  overlayChildBuilder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        _storageController20
                                                                            .toggle();
                                                                      },
                                                                      child: Center(
                                                                          child: Container(
                                                                        height: height *
                                                                            0.4,
                                                                        width: width *
                                                                            0.8,
                                                                        color: Colors
                                                                            .white,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      )),
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                                        height: height *
                                                                            0.2,
                                                                        width: width *
                                                                            0.43,
                                                                        child: Image
                                                                            .network(
                                                                          "http://137.184.91.38:5000/productImages/${productdatacomp["storageC20"]}",
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Row(
                                                      children: [
                                                        productdatacomp[
                                                                    "keyF1text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF1text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF2text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF2text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF3text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF3text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF4text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF4text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF5text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF5text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF6text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16ext"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF7text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF7text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF8text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF8text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF9text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF9text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF10text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF10text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF11text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF11text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF12text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF12text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF13text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF13text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF14text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF14text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF15text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF15text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF16text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF16text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF17text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF17text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        productdatacomp[
                                                                    "keyF18text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF18text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
                                                              ),
                                                        // productdatacomp[
                                                        //             "keyF19text"] ==
                                                        //         ""
                                                        //     ? Container()
                                                        //     : Row(
                                                        //         children: [
                                                        //           Container(
                                                        //               padding: EdgeInsets.only(
                                                        //                   bottom:
                                                        //                       10),
                                                        //               width: width *
                                                        //                   0.43,
                                                        //               child:
                                                        //                   Text(
                                                        //                 "${productdatacomp["keyF19text"]}",
                                                        //                 textAlign:
                                                        //                     TextAlign.center,
                                                        //                 style: TextStyle(
                                                        //                     fontFamily:
                                                        //                         'Montserrat',
                                                        //                     color:
                                                        //                         Colors.grey.shade600),
                                                        //               )),
                                                        //           SizedBox(
                                                        //             width: 10,
                                                        //           )
                                                        //         ],
                                                        //       ),
                                                        productdatacomp[
                                                                    "keyF20text"] ==
                                                                ""
                                                            ? Container()
                                                            : Row(
                                                                children: [
                                                                  Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      width: width *
                                                                          0.43,
                                                                      child:
                                                                          Text(
                                                                        "${productdatacomp["keyF20text"]}",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Colors.grey.shade600),
                                                                      )),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  )
                                                                ],
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
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.022,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Broucherbutton(address: "hiuyrgd"),
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
                        SecondPhase(
                            popularcarList: popularcarlist,
                            newcarList: newcarlist,
                            upcomingcarList: upcomingcarlist),
                        // FeaturedPhase(),
                        SizedBox(
                          height: 20,
                        ),
                        Footer(),
                      ],
                    ),
                  ),
                ]),
              ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 50, size.height);
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
    path.lineTo(size.width - 50, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
