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

  static List<BrandLogo> Brands = [
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/first.png")),
        BrandName: "First"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/second.png")),
        BrandName: "Second"),
    BrandLogo(
        BrandImage: Image(image: AssetImage("assets/image/carimage/third.png")),
        BrandName: "Third"),
    BrandLogo(
        BrandImage:
            Image(image: AssetImage("assets/image/carimage/fourth.png")),
        BrandName: "Fourth"),
  ];

  int k = Brands.length;
  late double row = k / 4;

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
        Container(
          height: fullist ? row * height * 0.1215 : height * 0.31,
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
                    height: fullist ? row * height * 0.106 : height * 0.2,
                    child: GridView.count(
                      crossAxisCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(fullist ? k : 8, (index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BrandPage()),
                                );
                              },
                              child: Image(
                                image: (Brands[index].BrandImage).image,
                                alignment: Alignment.center,
                                height: height * 0.033,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Text(
                              Brands[index].BrandName != null
                                  ? (Brands[index].BrandName)
                                  : "default",
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
