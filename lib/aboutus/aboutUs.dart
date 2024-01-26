import 'package:avatar_view/avatar_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/aboutus/servicedatatype.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class AboutUs extends StatefulWidget {
  AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<OurService> oService = [
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
    OurService(
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
      image: "assets/image/profile/profile.jpg",
    ),
  ];

  List<WeAreMotorOctane> wAMotorOctane = [
    WeAreMotorOctane(
        content:
            "Lorem ipsum dolor sit amet, coipsum dolor sit amet, consectetur adipiscing elit, sed donsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
        image: "assets/image/profile/profile.jpg",
        name: "Name Surname",
        designation: "Designation"),
    WeAreMotorOctane(
        content:
            "Loremipsum dolor sit amet, consectetur adipiscing elit, sed do ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
        image: "assets/image/profile/profile.jpg",
        name: "Name Surname",
        designation: "Designation"),
    WeAreMotorOctane(
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing ipsum dolor sit amet, consectetur adipiscing elit, sed doelit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
        image: "assets/image/profile/profile.jpg",
        name: "Name Surname",
        designation: "Designation"),
  ];

  List<JobDescription> jobbDes = [
    JobDescription(
      title: "Job Title",
      discription:
          "Loremipsum dolor sit amet, consectetur adipiscing elit, sed do ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    ),
    JobDescription(
      title: "Job Title",
      discription:
          "Loremipsum dolor sit amet, consectetur adipiscing elit, sed do ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    ),
    JobDescription(
      title: "Job Title",
      discription:
          "Loremipsum dolor sit amet, consectetur adipiscing elit, sed do ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
    ),
  ];

  int currentIndexJob = 0;
  int currentIndex = 0;
  int waMotorOctaneindex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

    downarrow(index) {
      setState(() {
        waMotorOctaneindex = index;
      });
    }

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
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("whatsapp");
            // _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset("assets/icons/whatsapp.png"),
        ),
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
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Armstrong',
                        height: 2,
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "ABOUT US & ",
                          style: TextStyle(color: Colors.grey.shade600)),
                      const TextSpan(
                          text: 'CAREER',
                          style: TextStyle(
                              color: Color.fromARGB(255, 147, 20, 20)))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/image/landing/landing.jpg',
              width: double.infinity,
              // height: height * 0.23,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      // height: height * 0.54,
                      alignment: Alignment.centerRight,
                      // padding: EdgeInsets.only(left: width * 0.13),
                      child: Image.asset(
                        "assets/image/tyre/tirenew/tirer.png",
                        scale: 1.8,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Armstrong',
                                  height: 2,
                                  fontSize: 21,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "FACT ",
                                    style:
                                        TextStyle(color: Colors.grey.shade600)),
                                const TextSpan(
                                    text: 'FILE',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 147, 20, 20)))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.grey.shade600,
                            height: 80,
                            width: 63,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 25,
                                  width: 35,
                                  child: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.4),
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 MILLION FANS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 28,
                              ),
                              CustomPaint(
                                size: Size(1.5, 40),
                                painter: DashedLineVerticalPainter(),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Colors.grey.shade600,
                            height: 80,
                            width: 63,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 25,
                                  width: 35,
                                  child: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.4),
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 MILLION FANS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 28,
                              ),
                              CustomPaint(
                                size: Size(1.5, 40),
                                painter: DashedLineVerticalPainter(),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Colors.grey.shade600,
                            height: 80,
                            width: 63,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 25,
                                  width: 35,
                                  child: Icon(
                                    FontAwesomeIcons.youtube,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.4),
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 MILLION FANS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 28,
                              ),
                              CustomPaint(
                                size: Size(1.5, 40),
                                painter: DashedLineVerticalPainter(),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Colors.grey.shade600,
                            height: 80,
                            width: 63,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 25,
                                  width: 35,
                                  child: Icon(
                                    FontAwesomeIcons.globe,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.4),
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade800),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 MILLION MONTHLY VISITORS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Armstrong',
                                  height: 2,
                                  fontSize: 21,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "OUR ",
                                    style:
                                        TextStyle(color: Colors.grey.shade600)),
                                const TextSpan(
                                    text: 'MISSION',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 147, 20, 20)))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              "Making Car Buying Easy",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Montserrat",
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                                fontFamily: 'Armstrong',
                                height: 2,
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "OUR ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              const TextSpan(
                                  text: 'SERVICE',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 147, 20, 20)))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
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
                                  height: height * 0.053,
                                  width: width * 0.5,
                                  color: Colors.grey.shade700,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.06),
                                    child: Text(
                                      "CONTENT CREATION",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: height * 0.018,
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
                                  height: height * 0.053,
                                  width: width * 0.55,
                                  color: Colors.grey.shade600,
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      "CAR CONSULATION",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: height * 0.019,
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
                                  height: height * 0.053,
                                  width: width * 0.50,
                                  color: Colors.grey.shade500,
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      "CAR INSURENCE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: height * 0.019,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.white,
                      height: 110,
                      width: double.infinity,
                      child: PageView.builder(
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index % oService.length;
                            print(currentIndex);
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: SizedBox(
                                height: 150,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 220,
                                      child: Text(
                                        oService[index % oService.length]
                                            .content,
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 90,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Image.asset(
                                        oService[index % oService.length].image,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < oService.length; i++)
                          buildIndicator(currentIndex == i)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 25,
              width: double.infinity,
              color: Color.fromARGB(255, 147, 20, 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Armstrong',
                          height: 2,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: "WE ARE ",
                            style: TextStyle(color: Colors.grey.shade600)),
                        const TextSpan(
                            text: 'MOTOROCTANE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 147, 20, 20)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 305,
              child: CarouselSlider.builder(
                itemCount: wAMotorOctane.length,
                options: CarouselOptions(
                  height: 330,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  initialPage: 2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      waMotorOctaneindex = index;
                      // print(waMotorOctaneindex);
                    });
                  },
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        width: 220,
                        height: 270,
                        // color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            AvatarView(
                              radius: 60,
                              isOnlyText: false,
                              avatarType: AvatarType.CIRCLE,
                              imagePath: wAMotorOctane[index].image,
                              placeHolder: Container(
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                ),
                              ),
                              errorWidget: Container(
                                child: Icon(
                                  Icons.error,
                                  size: 50,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              wAMotorOctane[index].name,
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.grey.shade800),
                            ),
                            Text(
                              wAMotorOctane[index].designation,
                              style: TextStyle(
                                fontSize: 11,
                                fontFamily: "Montserrat",
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              wAMotorOctane[index].content,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 8,
                                  color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < wAMotorOctane.length; i++)
                  buildIndicator(waMotorOctaneindex == i)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/image/strip/crousalCar.jpg"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Armstrong',
                              height: 2,
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "OUR WORK ",
                                style: TextStyle(color: Colors.grey.shade600)),
                            const TextSpan(
                                text: 'CULTURE',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 147, 20, 20)))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 11,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Armstrong',
                              height: 2,
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "WE NEED ",
                                style: TextStyle(color: Colors.grey.shade600)),
                            const TextSpan(
                                text: 'YOU',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 147, 20, 20)))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
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
                                height: height * 0.053,
                                width: width * 0.45,
                                color: Colors.grey.shade700,
                                child: Padding(
                                  padding: EdgeInsets.only(right: width * 0.06),
                                  child: Text(
                                    "AUTO REVIEWER",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: height * 0.018,
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
                                height: height * 0.053,
                                width: width * 0.50,
                                color: Colors.grey.shade600,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    "VIDEO EDITOR",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: height * 0.019,
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
                                height: height * 0.053,
                                width: width * 0.50,
                                color: Colors.grey.shade500,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    "CAR INSURENCE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: height * 0.019,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(20),
                      // borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // color: Colors.white,
                    height: 160,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndexJob = index % jobbDes.length;
                          print(currentIndex);
                        });
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // width: 220,
                                  Text(
                                    jobbDes[index % jobbDes.length].title,
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 15,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),

                                  Container(
                                    // height: 90,
                                    // width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Text(
                                      jobbDes[index % jobbDes.length]
                                          .discription,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Color.fromARGB(
                                                  255, 147, 20, 20),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          child: const Text(
                                            'Apply',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Armstrong"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < jobbDes.length; i++)
                        buildIndicator(currentIndexJob == i)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        )),
      )),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 8 : 6,
        width: isSelected ? 8 : 6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.red.shade800 : Colors.grey,
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
