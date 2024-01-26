import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/BrandPage/brandPage.dart';
import 'package:motoroctane/LandingPage/Widgets/brandlist.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class PhaseThird extends StatefulWidget {
  const PhaseThird({super.key});

  @override
  State<PhaseThird> createState() => _PhaseThirdState();
}

class _PhaseThirdState extends State<PhaseThird> {
  bool fullist = false;

  @override
  void initState() {
    super.initState();

    k = 0;
    roww = 0;
    getData();
  }

  var jsonList;
  late int k;
  late double roww;

  void getData() async {
    try {
      var response = await Dio().get('http://137.184.91.38:5000/brands');
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        setState(() {
          jsonList = response.data;
          print(
              "====================================================================111111111111111");
          print(jsonList);
          print(
              "====================================================================111111111111111");
          k = jsonList.length;
          if (k % 4 == 0) {
            roww = k / 4;
          } else {
            roww = k / 4 + 1;
          }
          // print(jsonList);
          // print(k);
        });
      }
    } catch (e) {
      setState(() {
        k = 0;
        roww = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // List<BrandLogo> brands = [];

    late int row = roww.toInt();

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    return Stack(
      children: [
        Container(
          height: fullist
              ? (row * height * 0.1037 + height * 0.15)
              : k > 8
                  ? height * 0.16 + height * 0.18
                  : (row * height * 0.09 + height * 0.15),
          color: Colors.white,
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            "assets/image/tyre/tirenew/tirer.png",
            fit: BoxFit.cover,
            color: Colors.grey.shade400,
          ),
        ),
        Column(
          children: [
            Image.asset(
              "assets/image/strip/strip.jpg",
              width: double.infinity,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: width * 0.041, right: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          fontFamily: 'Armstrong',
                          height: height * 0.0032,
                          fontSize: height * 0.025,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: "BROWSE BY ",
                            style: TextStyle(color: Colors.grey.shade600)),
                        TextSpan(
                            text: 'BRANDS',
                            style: TextStyle(color: Colors.red.shade900))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: fullist
                        ? k > 8
                            ? row * height * 0.095 + (row - 2) * 0.0135 * height
                            : row * height * 0.095
                        : k > 8
                            ? 2 * height * 0.099
                            : row * height * 0.095,
                    child: GridView.count(
                      crossAxisCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                          fullist
                              ? k
                              : k > 8
                                  ? 8
                                  : k, (index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil<dynamic>(
                                    context,
                                    MaterialPageRoute<dynamic>(
                                      builder: (BuildContext context) =>
                                          BrandPage(
                                        id: jsonList[index]["_id"],
                                      ),
                                    ),
                                    (Route<dynamic> route) => false);
                              },
                              child: Image.network(
                                "http://137.184.91.38:5000/brandImages/${jsonList[index]["image"]}",
                                alignment: Alignment.center,
                                height: height * 0.036,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Text(
                              jsonList[index]['name'] != null
                                  ? (jsonList[index]['name'])
                                  : "default",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.015),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  Container(
                    height: height * 0.005,
                    color: Colors.white,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        SignedSpacingRow(spacing: -30, children: [
                          ClipPath(
                            clipper: Clip4Clipper(),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: height * 0.05,
                                width: width * 0.083,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipPath(
                            clipper: Clip3Clipper(),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (fullist == false) {
                                    fullist = true;
                                  } else {
                                    fullist = false;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.grey.shade600,
                                ),
                                alignment: Alignment.center,
                                height: height * 0.05,
                                width: width * 0.38,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Text(
                                    fullist ? "SHOW LESS" : "LOAD MORE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: height * 0.015,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.001,
                    width: double.infinity,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Clip3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Clip4Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height + 5);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
