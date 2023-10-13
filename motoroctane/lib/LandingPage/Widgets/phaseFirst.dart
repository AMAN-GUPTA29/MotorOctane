import 'package:flutter/material.dart';

import 'package:motoroctane/BrandPage/Components/companynameadd.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';

import 'package:searchfield/searchfield.dart';
import 'package:flutter/foundation.dart';
import 'package:motoroctane/widgets/landingpage/verticledash.dart';

class PhaseFirst extends StatefulWidget {
  const PhaseFirst({super.key});

  @override
  State<PhaseFirst> createState() => _PhaseFirstState();
}

class _PhaseFirstState extends State<PhaseFirst> {
  @override
  Widget build(BuildContext context) {
    List<CarsData> _registeredCars = [
      CarsData(
        title: 'First',
      ),
      CarsData(
        title: 'Second',
      ),
    ];

    var SearchedTitle;

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

    return Stack(
      children: [
        Container(
          height: 618,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/genral/trackn.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                      fontFamily: 'Armstrong',
                      height: 2,
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "FIND YOUR ",
                        style: TextStyle(color: Colors.grey.shade600)),
                    TextSpan(
                        text: 'PERFECT CAR',
                        style: TextStyle(color: Colors.red.shade900))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsetsDirectional.only(
                              start: 26, end: 26),
                        ),
                        child: Text(
                          'SEARCH',
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsetsDirectional.only(
                              start: 19, end: 19),
                        ),
                        child: Text(
                          'ASSIST ME',
                          style: TextStyle(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsetsDirectional.only(
                              start: 14, end: 14),
                        ),
                        child: Text(
                          'CONSULT US',
                          style: TextStyle(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: SearchField(
                  suggestions: _registeredCars
                      .map((e) => SearchFieldListItem(e.title,
                          item: e,
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(e.title),
                          )))
                      .toList(),
                  searchInputDecoration: InputDecoration(
                    alignLabelWithHint: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        print(searchedText.text);
                      },
                      splashColor: Color.fromARGB(0, 255, 255, 255),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
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
              SizedBox(
                height: 20,
              ),
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
                        height: size08 == true ? 100 : 85,
                        width: size08 == true ? 100 : 85,
                        color: cat08 == true
                            ? const Color.fromARGB(255, 147, 20, 20)
                            : Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(size08 == true ? 12 : 10),
                          child: Column(
                            children: [
                              Text(
                                "UNDER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size08 == true ? 17 : 15,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size08 == true ? 8 : 6,
                              ),
                              Text(
                                "08",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size08 == true ? 22 : 20,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size08 == true ? 8 : 6,
                              ),
                              Text(
                                "LAKHS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size08 == true ? 17 : 15,
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
                        size: Size(1, 80),
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
                        height: size15 == true ? 100 : 85,
                        width: size15 == true ? 100 : 85,
                        color: cat15 == true
                            ? const Color.fromARGB(255, 147, 20, 20)
                            : Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(size15 == true ? 12 : 10),
                          child: Column(
                            children: [
                              Text(
                                "UNDER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size15 == true ? 17 : 15,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size15 == true ? 8 : 6,
                              ),
                              Text(
                                "15",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size15 == true ? 22 : 20,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size15 == true ? 8 : 6,
                              ),
                              Text(
                                "LAKHS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size15 == true ? 17 : 15,
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
                        size: Size(1, 80),
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
                        height: size25 == true ? 100 : 85,
                        width: size25 == true ? 100 : 85,
                        color: cat25 == true
                            ? Color.fromARGB(255, 147, 20, 20)
                            : Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(size25 == true ? 12 : 10),
                          child: Column(
                            children: [
                              Text(
                                "UNDER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size25 == true ? 17 : 15,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size25 == true ? 8 : 6,
                              ),
                              Text(
                                "25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size25 == true ? 22 : 20,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size25 == true ? 8 : 6,
                              ),
                              Text(
                                "LAKHS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size25 == true ? 17 : 15,
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
                        size: Size(1, 80),
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
                        height: size50 == true ? 100 : 85,
                        width: size50 == true ? 100 : 85,
                        color: cat50 == true
                            ? Color.fromARGB(255, 147, 20, 20)
                            : Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(size50 == true ? 12 : 10),
                          child: Column(
                            children: [
                              Text(
                                "UNDER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size50 == true ? 17 : 15,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size50 == true ? 8 : 6,
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size50 == true ? 22 : 20,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: size50 == true ? 8 : 6,
                              ),
                              Text(
                                "LAKHS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size50 == true ? 17 : 15,
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
                        size: Size(1, 80),
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
                        height: sizeA50 == true ? 100 : 85,
                        width: sizeA50 == true ? 100 : 85,
                        color: catA50 == true
                            ? Color.fromARGB(255, 147, 20, 20)
                            : Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(sizeA50 == true ? 12 : 10),
                          child: Column(
                            children: [
                              Text(
                                "ABOVE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: sizeA50 == true ? 17 : 15,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: sizeA50 == true ? 8 : 6,
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: sizeA50 == true ? 22 : 20,
                                    fontFamily: 'Armstrong'),
                              ),
                              SizedBox(
                                height: sizeA50 == true ? 8 : 6,
                              ),
                              Text(
                                "LAKHS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: sizeA50 == true ? 17 : 15,
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
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 330,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemBuilder: ((ctx, index) => InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          height: 300,
                          width: 200,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "₹ 1.04 *Lakhs",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 171, 55, 58),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "onwards",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600),
                                      ),
                                      Text(
                                        "Ex Showroom Price",
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 171, 55, 58),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    padding: EdgeInsets.only(left: 10),
                                    height: 20,
                                    width: 45,
                                    child: Row(
                                      children: [
                                        Text(
                                          "4.2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Icon(
                                    Icons.bookmark,
                                    color: Color.fromARGB(255, 171, 55, 58),
                                  ),
                                ],
                              ),
                              Container(
                                height: 110,
                                width: 180,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mercedes-Benz",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'Armstrong',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "E-Class Cabriolet",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'Armstrong',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: Color.fromARGB(255, 171, 55, 58),
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
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .airline_seat_recline_extra_sharp,
                                              color: Colors.grey.shade600,
                                              size: 20,
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
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Seater',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                )
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
                                              Icons.sick,
                                              color: Colors.grey.shade600,
                                              size: 20,
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
                                                      fontSize: 11,
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
                                    height: 9,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.local_gas_station,
                                              color: Colors.grey.shade600,
                                              size: 20,
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
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Petrol',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Petrol',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Petrol',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
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
                                              size: 20,
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
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Manual',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Auto',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                                Text(
                                                  'Manual',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11,
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
              //
            ],
          ),
        ),
      ],
    );
  }
}
