import 'package:dio/dio.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motoroctane/BrandPage/Components/Phase3.dart';
import 'package:motoroctane/BrandPage/Components/companynameadd.dart';
import 'package:motoroctane/BrandPage/Components/phase1.dart';
import 'package:motoroctane/BrandPage/Components/phase4.dart';
import 'package:motoroctane/BrandPage/Components/phaseFourth.dart';
import 'package:motoroctane/BrandPage/Components/News.dart';
import 'package:motoroctane/LandingPage/Widgets/comperison.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/productpage/productPage.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/foundation.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';

class BrandPage extends StatefulWidget {
  BrandPage({
    super.key,
    required this.id,
  });

  String id;

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  @override
  List<CarsData> _registeredCars = [
    CarsData(
      title: 'First',
    ),
    CarsData(
      title: 'Second',
    ),
  ];

  @override
  void initState() {
    getbrandlist();

    super.initState();
  }

  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  String? selectedItem;

  List<String> fueltype = ['LPG', 'Petrol', 'Diesal'];
  String? selectedfuel;

  var SearchedTitle;

  ScrollController _controller = new ScrollController();

  TextEditingController searchedText = TextEditingController();

  bool first = true;
  bool second = false;
  bool third = false;
  bool fourth = false;

  bool sizefirst = true;
  bool sizesecond = false;
  bool sizethird = false;
  bool sizefourth = false;

  bool loadingdata = false;

  var brandcarlist;

  void getbrandlist() async {
    setState(() {
      loadingdata = true;
    });

    try {
      var response = await Dio()
          .get('http://137.184.91.38:5000/api/cars/brand/${widget.id}');
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        setState(() {
          brandcarlist = response.data;
          // print(jsonList);
          print("*********************************");
          print(brandcarlist.length);
          print(brandcarlist[0]["brand"]["image"]);
          print("*********************************");
          print("*********************************");
          // print(brandcarlist[0]["brand"]["name"]);

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
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    double position = 0;

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
                backgroundColor: Colors.white,
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
                appBar: HeaderAlltest(
                  appBar: AppBar(),
                  drawerr: drawww,
                ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/image/landing/landing.jpg'),
                      SizedBox(
                        height: 10,
                      ),
                      ComapnynameAddSecond(
                        id: widget.id,
                        image: brandcarlist[0]["brand"]["image"],
                        rating: brandcarlist[0]["brand"]["rating"],
                        // image: brandcarlist[0][],
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 500,
                            padding: EdgeInsets.only(left: 40),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirer.png",
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Column(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    first = true;
                                                    second = false;
                                                    third = false;
                                                    fourth = false;

                                                    sizefirst = true;
                                                    sizesecond = false;
                                                    sizethird = false;
                                                    sizefourth = false;
                                                  });
                                                },
                                                child: Container(
                                                  height: sizefirst == true
                                                      ? 87
                                                      : 76,
                                                  width: sizefirst == true
                                                      ? 87
                                                      : 76,
                                                  color: first == true
                                                      ? const Color.fromARGB(
                                                          255, 147, 20, 20)
                                                      : Colors.grey,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        sizefirst == true
                                                            ? 10
                                                            : 8),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              sizefirst == true
                                                                  ? 4
                                                                  : 3,
                                                        ),
                                                        Text(
                                                          "#1",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizefirst ==
                                                                        true
                                                                    ? 22
                                                                    : 20,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              sizefirst == true
                                                                  ? 5
                                                                  : 4,
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "SALES JULY 23",
                                                          style: TextStyle(
                                                            letterSpacing: 0.4,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizefirst ==
                                                                        true
                                                                    ? 14
                                                                    : 13,
                                                          ),
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
                                                  size: Size(1, 60),
                                                  painter:
                                                      DashedLineVerticalPainter()),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    first = false;
                                                    second = true;
                                                    third = false;
                                                    fourth = false;

                                                    sizefirst = false;
                                                    sizesecond = true;
                                                    sizethird = false;
                                                    sizefourth = false;
                                                  });
                                                },
                                                child: Container(
                                                  height: sizesecond == true
                                                      ? 87
                                                      : 76,
                                                  width: sizesecond == true
                                                      ? 87
                                                      : 76,
                                                  color: second == true
                                                      ? const Color.fromARGB(
                                                          255, 147, 20, 20)
                                                      : Colors.grey,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        sizesecond == true
                                                            ? 10
                                                            : 8),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              sizesecond == true
                                                                  ? 4
                                                                  : 3,
                                                        ),
                                                        Text(
                                                          "10",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizesecond ==
                                                                        true
                                                                    ? 22
                                                                    : 20,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              sizesecond == true
                                                                  ? 4
                                                                  : 3,
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "VEHICLES CURRENTLY SELLING",
                                                          style: TextStyle(
                                                            height: 1.2,
                                                            wordSpacing: 0.2,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizesecond ==
                                                                        true
                                                                    ? 9
                                                                    : 8,
                                                          ),
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
                                                  size: Size(1, 60),
                                                  painter:
                                                      DashedLineVerticalPainter()),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    first = false;
                                                    second = false;
                                                    third = true;
                                                    fourth = false;

                                                    sizefirst = false;
                                                    sizesecond = false;
                                                    sizethird = true;
                                                    sizefourth = false;
                                                  });
                                                },
                                                child: Container(
                                                  height: sizethird == true
                                                      ? 87
                                                      : 76,
                                                  width: sizethird == true
                                                      ? 87
                                                      : 76,
                                                  color: third == true
                                                      ? Color.fromARGB(
                                                          255, 147, 20, 20)
                                                      : Colors.grey,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        sizethird == true
                                                            ? 12
                                                            : 10),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              sizethird == true
                                                                  ? 2
                                                                  : 1,
                                                        ),
                                                        Text(
                                                          "5",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizethird ==
                                                                        true
                                                                    ? 20
                                                                    : 19,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              sizethird == true
                                                                  ? 4
                                                                  : 3,
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "VEHICLES UPCOMING BY 2023",
                                                          style: TextStyle(
                                                            height: 1.2,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizethird ==
                                                                        true
                                                                    ? 9
                                                                    : 8,
                                                          ),
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
                                                  size: Size(1, 60),
                                                  painter:
                                                      DashedLineVerticalPainter()),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    first = false;
                                                    second = false;
                                                    third = false;
                                                    fourth = true;

                                                    sizefirst = false;
                                                    sizesecond = false;
                                                    sizethird = false;
                                                    sizefourth = true;
                                                  });
                                                },
                                                child: Container(
                                                  height: sizefourth == true
                                                      ? 87
                                                      : 76,
                                                  width: sizefourth == true
                                                      ? 87
                                                      : 76,
                                                  color: fourth == true
                                                      ? Color.fromARGB(
                                                          255, 147, 20, 20)
                                                      : Colors.grey,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        sizefourth == true
                                                            ? 12
                                                            : 10),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              sizefourth == true
                                                                  ? 6
                                                                  : 5,
                                                        ),
                                                        Text(
                                                          "300",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizefourth ==
                                                                        true
                                                                    ? 24
                                                                    : 22,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              sizefourth == true
                                                                  ? 12
                                                                  : 10,
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "DEALERS",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize:
                                                                sizefourth ==
                                                                        true
                                                                    ? 10
                                                                    : 8,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 25, right: 25),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                top: 2,
                                                bottom: 2),
                                            color: Colors.grey,
                                            child: Container(
                                              color: Colors.white,
                                              height: 40,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child: SearchField(
                                                  suggestions: _registeredCars
                                                      .map((e) =>
                                                          SearchFieldListItem(
                                                              e.title,
                                                              item: e,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            0),
                                                                child: Text(
                                                                    e.title),
                                                              )))
                                                      .toList(),
                                                  searchInputDecoration:
                                                      InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                      bottom: 1.5,
                                                      left: 5,
                                                    ),
                                                    alignLabelWithHint: true,
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      borderSide: BorderSide(
                                                          color: Colors.grey),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      borderSide: BorderSide(
                                                          color: Colors.grey),
                                                    ),
                                                    disabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      borderSide: BorderSide(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    suffixIcon: InkWell(
                                                      onTap: () {
                                                        print(
                                                            searchedText.text);
                                                      },
                                                      splashColor:
                                                          Color.fromARGB(
                                                              0, 255, 255, 255),
                                                      child: Container(
                                                        height: 50,
                                                        width: 30,
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
                                          height: 2,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 26,
                                    width: 135,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.red.shade900,
                                          ),
                                          hint: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                "Sort By",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey.shade500,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          value: selectedItem,
                                          items: items
                                              .map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      item,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors
                                                              .grey.shade900),
                                                    ),
                                                  )))
                                              .toList(),
                                          onChanged: (item) {
                                            setState(() {
                                              selectedItem = item;
                                            });
                                          }),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 26,
                                    width: 135,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.red.shade900,
                                          ),
                                          hint: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                "Filter By",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey.shade500,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          value: selectedItem,
                                          items: items
                                              .map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      item,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors
                                                              .grey.shade900),
                                                    ),
                                                  )))
                                              .toList(),
                                          onChanged: (item) {
                                            setState(() {
                                              selectedItem = item;
                                            });
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Stack(
                                children: [
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
                                              onTap: () {
                                                // Navigator.pushAndRemoveUntil<dynamic>(
                                                //     context,
                                                //     MaterialPageRoute<dynamic>(
                                                //       builder:
                                                //           (BuildContext context) =>
                                                //               ProductPage(),
                                                //     ),
                                                //     (Route<dynamic> route) => false);
                                              },
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
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      PhaseSecondBrand(),
                      SecondPhaseBrand(),
                      SizedBox(
                        height: 10,
                      ),
                      ThirdPhaseBrand(),
                      SizedBox(
                        height: 10,
                      ),
                      PhaseFourth(),
                      SizedBox(
                        height: 10,
                      ),
                      News(),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/image/strip/strip.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      Comparison(),
                      SizedBox(
                        height: 10,
                      ),
                      Footer(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
