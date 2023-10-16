import 'package:flutter/material.dart';
import 'package:motoroctane/BrandPage/Components/Phase3.dart';
import 'package:motoroctane/BrandPage/Components/companynameadd.dart';
import 'package:motoroctane/BrandPage/Components/phase1.dart';
import 'package:motoroctane/BrandPage/Components/phase4.dart';
import 'package:motoroctane/BrandPage/Components/phaseFourth.dart';
import 'package:motoroctane/BrandPage/Components/News.dart';
import 'package:motoroctane/LandingPage/Widgets/comperison.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/foundation.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';

class BrandPage extends StatefulWidget {
  const BrandPage({super.key});

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  List<CarsData> _registeredCars = [
    CarsData(
      title: 'First',
    ),
    CarsData(
      title: 'Second',
    ),
  ];

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

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double position = 0;

    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(),
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset("assets/icons/whatsapp.png"),
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
              ComapnynameAddSecond(),
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
                                          height: sizefirst == true ? 87 : 76,
                                          width: sizefirst == true ? 87 : 76,
                                          color: first == true
                                              ? const Color.fromARGB(
                                                  255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                sizefirst == true ? 10 : 8),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height:
                                                      sizefirst == true ? 4 : 3,
                                                ),
                                                Text(
                                                  "#1",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizefirst == true
                                                        ? 22
                                                        : 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      sizefirst == true ? 5 : 4,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "SALES JULY 23",
                                                  style: TextStyle(
                                                    letterSpacing: 0.4,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizefirst == true
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
                                          painter: DashedLineVerticalPainter()),
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
                                          height: sizesecond == true ? 87 : 76,
                                          width: sizesecond == true ? 87 : 76,
                                          color: second == true
                                              ? const Color.fromARGB(
                                                  255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                sizesecond == true ? 10 : 8),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: sizesecond == true
                                                      ? 4
                                                      : 3,
                                                ),
                                                Text(
                                                  "10",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizesecond == true
                                                        ? 22
                                                        : 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: sizesecond == true
                                                      ? 4
                                                      : 3,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "VEHICLES CURRENTLY SELLING",
                                                  style: TextStyle(
                                                    height: 1.2,
                                                    wordSpacing: 0.2,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizesecond == true
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
                                          painter: DashedLineVerticalPainter()),
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
                                          height: sizethird == true ? 87 : 76,
                                          width: sizethird == true ? 87 : 76,
                                          color: third == true
                                              ? Color.fromARGB(255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                sizethird == true ? 12 : 10),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height:
                                                      sizethird == true ? 2 : 1,
                                                ),
                                                Text(
                                                  "5",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizethird == true
                                                        ? 20
                                                        : 19,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      sizethird == true ? 4 : 3,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "VEHICLES UPCOMING BY 2023",
                                                  style: TextStyle(
                                                    height: 1.2,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizethird == true
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
                                          painter: DashedLineVerticalPainter()),
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
                                          height: sizefourth == true ? 87 : 76,
                                          width: sizefourth == true ? 87 : 76,
                                          color: fourth == true
                                              ? Color.fromARGB(255, 147, 20, 20)
                                              : Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                sizefourth == true ? 12 : 10),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: sizefourth == true
                                                      ? 6
                                                      : 5,
                                                ),
                                                Text(
                                                  "300",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizefourth == true
                                                        ? 24
                                                        : 22,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: sizefourth == true
                                                      ? 12
                                                      : 10,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "DEALERS",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: sizefourth == true
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
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 20, right: 20, top: 2, bottom: 2),
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
                                                  SearchFieldListItem(e.title,
                                                      item: e,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 0),
                                                        child: Text(e.title),
                                                      )))
                                              .toList(),
                                          searchInputDecoration:
                                              InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                              bottom: 1.5,
                                              left: 5,
                                            ),
                                            alignLabelWithHint: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
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
                                              splashColor: Color.fromARGB(
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
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Sort By",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  value: selectedItem,
                                  items: items
                                      .map((item) => DropdownMenuItem(
                                          value: item,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              item,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey.shade900),
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
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Filter By",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  value: selectedItem,
                                  items: items
                                      .map((item) => DropdownMenuItem(
                                          value: item,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              item,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey.shade900),
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
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                            )
                                          ]),
                                      margin: EdgeInsets.all(5),
                                      padding: EdgeInsets.only(
                                          top: 5, left: 10, right: 10),
                                      height: 270,
                                      width: 166,
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
                                                        const EdgeInsets.only(
                                                            top: 4),
                                                    child: Text(
                                                      "onwards",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "Montserrat",
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade700),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Ex Showroom Price",
                                                    style: TextStyle(
                                                        fontSize: 5,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .grey.shade600),
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
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                6))),
                                                padding:
                                                    EdgeInsets.only(left: 7),
                                                height: 17,
                                                width: 37,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "4.2",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Row(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra_sharp,
                                                          color: Colors
                                                              .grey.shade600,
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '5,7,8',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Seater',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
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
                                                          color: Colors
                                                              .grey.shade600,
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'NCAP NA*',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
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
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Row(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .local_gas_station,
                                                          color: Colors
                                                              .grey.shade600,
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Petrol',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Petrol',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Petrol',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Petrol',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
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
                                                          color: Colors
                                                              .grey.shade600,
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 6,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Auto',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Manual',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Auto',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
                                                            ),
                                                            Text(
                                                              'Manual',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 9,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600),
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
    );
  }
}
