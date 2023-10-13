import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/BrandPage/Components/News.dart';
import 'package:motoroctane/servicePage.dart/crousaladd.dart';
import 'package:motoroctane/servicePage.dart/newsservice.dart';
import 'package:motoroctane/servicePage.dart/serviceCentre.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';
import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:searchfield/searchfield.dart';

class ServiceNetwork extends StatefulWidget {
  const ServiceNetwork({super.key});

  @override
  State<ServiceNetwork> createState() => _ServiceNetworkState();
}

class _ServiceNetworkState extends State<ServiceNetwork> {
  bool feature1 = false;
  bool feature2 = false;
  @override
  Widget build(BuildContext context) {
    List<String> cityn = [
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
      "CITY NAME",
    ];

    List<ServiceCentreData> centres = [
      ServiceCentreData(
        name: "Hyundai Motors",
        address:
            "Plot No 9 Narol-Naroda Highway, Opp Rabari Colony Bus Stop, Ahmedabad, Gujrat 380009",
        mail: "Nexa.Ahm.Wh@Atulmobilesrs.Com&Bsp;",
        phone: "721112004",
      ),
      ServiceCentreData(
        name: "Hyundai Motors",
        address:
            "Plot No 9 Narol-Naroda Highway, Opp Rabari Colony Bus Stop, Ahmedabad, Gujrat 380009",
        mail: "Nexa.Ahm.Wh@Atulmobilesrs.Com&Bsp;",
        phone: "721112004",
      ),
      ServiceCentreData(
        name: "Hyundai Motors",
        address:
            "Plot No 9 Narol-Naroda Highway, Opp Rabari Colony Bus Stop, Ahmedabad, Gujrat 380009",
        mail: "Nexa.Ahm.Wh@Atulmobilesrs.Com&Bsp;",
        phone: "721112004",
      ),
      ServiceCentreData(
        name: "Hyundai Motors",
        address:
            "Plot No 9 Narol-Naroda Highway, Opp Rabari Colony Bus Stop, Ahmedabad, Gujrat 380009",
        mail: "Nexa.Ahm.Wh@Atulmobilesrs.Com&Bsp;",
        phone: "721112004",
      )
    ];

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

    return SafeArea(
        child: Scaffold(
      appBar: HeaderAll(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image/landing/landing.jpg'),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  height: 600 + centres.length * 256,
                  child: Column(
                    children: [
                      Container(
                        height: 540,
                        // color: Colors.amber,
                        child: Image.asset(
                          "assets/image/tyre/tirenew/tirel.png",
                          fit: BoxFit.cover,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Container(
                        height: 500,
                        // color: Colors.amber,
                        child: Image.asset(
                          "assets/image/tyre/tirenew/tirer.png",
                          fit: BoxFit.cover,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 620 + centres.length * 256,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                                fontFamily: 'Armstrong',
                                height: 1,
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "HYUNDAI CAR SERVICE CENTERS IN ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              TextSpan(
                                  text: 'AHMEDABAD',
                                  style: TextStyle(color: Colors.red.shade900))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetucitation ullaml Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Montserrat", fontSize: 12.5),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.shade900.withOpacity(1),
                                blurRadius: 4,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 147, 20, 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Load More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                                fontFamily: 'Armstrong',
                                height: 1.1,
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "24 AUTHORIZED HYUNDAI SERVICE IN ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              TextSpan(
                                  text: 'AHMEDABAD',
                                  style: TextStyle(color: Colors.red.shade900))
                            ],
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // width: width * 0.6,
                              // height: height * 0.05,
                              // decoration: BoxDecoration(
                              //   boxShadow: [
                              //     BoxShadow(
                              //       offset: Offset(2, 1),
                              //       blurRadius: 0,
                              //       color: Colors.black.withOpacity(0.1),
                              //     ),
                              //   ],
                              // ),

                              child: ElevatedButton(
                                  onPressed: () {
                                    // _saveItem();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35),
                                    child: Text(
                                      'SALES',
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.grey.shade600)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              // width: width * 0.6,
                              // height: height * 0.05,
                              // decoration: BoxDecoration(
                              //   boxShadow: [
                              //     BoxShadow(
                              //       offset: Offset(2, 1),
                              //       blurRadius: 0,
                              //       color: Colors.black.withOpacity(0.1),
                              //     ),
                              //   ],
                              // ),
                              child: ElevatedButton(
                                  onPressed: () {
                                    // _saveItem();
                                  },
                                  child: Text(
                                    'SERVICE CENTERS',
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.grey.shade600)),
                            ),
                          ]),
                      for (var item in centres)
                        Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              height: 236,
                              width: 330,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 4,
                                    )
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: EdgeInsets.symmetric(vertical: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 22,
                                    ),
                                    child: Text(
                                      "${item.name}",
                                      style: TextStyle(
                                          fontFamily: "Armstrong",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 22),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.navigation_sharp,
                                          size: 20,
                                          color: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            "${item.address}",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 18),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ImageIcon(
                                          AssetImage(
                                            "assets/icons/email.png",
                                          ),
                                          size: 28,
                                          color: Colors.grey.shade700,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            "${item.mail}",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 22,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          size: 20,
                                          color: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            "${item.phone}",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 25,
                                          // width: width * 0.6,
                                          // height: height * 0.05,
                                          // decoration: BoxDecoration(
                                          //   boxShadow: [
                                          //     BoxShadow(
                                          //       offset: Offset(2, 1),
                                          //       blurRadius: 0,
                                          //       color: Colors.black.withOpacity(0.1),
                                          //     ),
                                          //   ],
                                          // ),

                                          child: ElevatedButton(
                                              onPressed: () {
                                                // _saveItem();
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 24),
                                                child: Text(
                                                  'LOCATE',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      wordSpacing: 1.5),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape:
                                                      RoundedRectangleBorder(),
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  backgroundColor: Colors.white,
                                                  foregroundColor:
                                                      Colors.grey.shade600)),
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),
                                        Container(
                                          height: 25,
                                          // width: width * 0.6,
                                          // height: height * 0.05,
                                          // decoration: BoxDecoration(
                                          //   boxShadow: [
                                          //     BoxShadow(
                                          //       offset: Offset(2, 1),
                                          //       blurRadius: 0,
                                          //       color: Colors.black.withOpacity(0.1),
                                          //     ),
                                          //   ],
                                          // ),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                // _saveItem();
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 24),
                                                child: Text(
                                                  'OFFERS',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      wordSpacing: 1.5),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape:
                                                      RoundedRectangleBorder(),
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  backgroundColor: Colors.white,
                                                  foregroundColor:
                                                      Colors.grey.shade600)),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ],
                        ),

                      //here
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.shade900.withOpacity(1),
                                blurRadius: 4,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 147, 20, 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Load More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Crousalservice(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                      fontFamily: 'Armstrong',
                      height: 1.1,
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "HYUNDAI CAR WORKSHOP IN ",
                        style: TextStyle(color: Colors.grey.shade600)),
                    TextSpan(
                        text: 'NEAREST CITIES',
                        style: TextStyle(color: Colors.red.shade900))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 26, right: 26),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
                color: Colors.grey,
                child: Container(
                  color: Colors.white,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: SearchField(
                      suggestions: _registeredCars
                          .map((e) => SearchFieldListItem(e.title,
                              item: e,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 0),
                                child: Text(e.title),
                              )))
                          .toList(),
                      searchInputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: 1.5,
                          left: 5,
                        ),
                        alignLabelWithHint: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            print(searchedText.text);
                          },
                          splashColor: Color.fromARGB(0, 255, 255, 255),
                          child: Container(
                            height: 50,
                            width: 40,
                            color: Colors.black,
                            child: ImageIcon(
                              AssetImage("assets/icons/search.png"),
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
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 300 + ((cityn.length) / 3) * 40,
                  child: Container(
                    height: 500,
                    // color: Colors.amber,
                    child: Image.asset(
                      "assets/image/tyre/tirenew/tirer.png",
                      fit: BoxFit.cover,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Container(
                  height: 310 + ((cityn.length) / 3) * 40,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: ((cityn.length) / 3) * 40,
                          // color: Colors.grey,
                          child: GridView.count(
                              childAspectRatio: 2,
                              crossAxisSpacing: 8,
                              crossAxisCount: 3,
                              physics: NeverScrollableScrollPhysics(),
                              children: List.generate(cityn.length, (index) {
                                return Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      margin:
                                          EdgeInsets.only(right: 2, left: 2),
                                      child: Text(
                                        cityn[index],
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                                fontFamily: 'Armstrong',
                                height: 1.1,
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "HYUNDAI NEWS ",
                                  style:
                                      TextStyle(color: Colors.grey.shade600)),
                              TextSpan(
                                  text: 'UPDATES',
                                  style: TextStyle(color: Colors.red.shade900))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature1 == false
                                        ? feature1 = true
                                        : feature1 = false;
                                    print("pressed1");
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 10),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey.shade500,
                                ),
                                child: const Text(
                                  'RECENT NEWS',
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              height: 24,
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    feature2 == false
                                        ? feature2 = true
                                        : feature2 = false;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(),
                                  minimumSize: const Size.fromHeight(26),
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat",
                                      fontSize: 10),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey.shade500,
                                ),
                                child: const Text(
                                  'EXPORT NEWS',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Newsservice(),
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
    ));
  }
}
