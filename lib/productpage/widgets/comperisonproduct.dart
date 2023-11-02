import 'package:flutter/material.dart';
import 'package:motoroctane/LandingPage/Widgets/comparetype.dart';

class ComparisonProduct extends StatelessWidget {
  const ComparisonProduct({super.key});

  @override
  Widget build(BuildContext context) {
    List<CompareDataType> comparelist = [
      CompareDataType(
        companyFirst: "Maruti",
        companySecond: "Tata",
        carNameFirst: "Brezza",
        carNameSecond: "Nexon",
        carFirstStart: "7.99",
        carFirstEnd: "13.96",
        carSecondStart: "7.70",
        carSecondEnd: "14.18",
      ),
      CompareDataType(
        companyFirst: "Maruti",
        companySecond: "Tata",
        carNameFirst: "Brezza",
        carNameSecond: "Nexon",
        carFirstStart: "7.99",
        carFirstEnd: "13.96",
        carSecondStart: "7.70",
        carSecondEnd: "14.18",
      ),
      CompareDataType(
        companyFirst: "Maruti",
        companySecond: "Tata",
        carNameFirst: "Brezza",
        carNameSecond: "Nexon",
        carFirstStart: "7.99",
        carFirstEnd: "13.96",
        carSecondStart: "7.70",
        carSecondEnd: "14.18",
      ),
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: RichText(
              // textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                    fontFamily: 'Armstrong',
                    height: 2,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: "HYUNDAI ",
                      style: TextStyle(color: Colors.grey.shade600)),
                  TextSpan(
                      text: 'COMPARO',
                      style: TextStyle(color: Colors.red.shade900))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 230,
              width: double.infinity,
              // color: Colors.black,
              child: ListView.builder(
                itemCount: comparelist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.only(bottom: 5, right: 5),
                  height: 220,
                  width: 305,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            color: Colors.black,
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/image/compare/car.jpg",
                                      width: 142,
                                      height: 150,
                                    ),
                                    Image.asset(
                                      "assets/image/compare/car.jpg",
                                      width: 142,
                                      height: 150,
                                    ),
                                  ],
                                ),
                                Center(
                                  child: ClipOval(
                                    child: Container(
                                        height: 30,
                                        width: 30,
                                        child: Center(
                                          child: Text(
                                            "VS",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comparelist[index].companyFirst,
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      comparelist[index].carNameFirst,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 147, 20, 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "₹" +
                                          comparelist[index].carFirstStart +
                                          " - ₹" +
                                          comparelist[index].carFirstEnd +
                                          " Lakhs",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          letterSpacing: -0.5,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comparelist[index].companyFirst,
                                      style: TextStyle(
                                          color: Colors.grey.shade600),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      comparelist[index].carNameFirst,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 147, 20, 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "₹" +
                                          comparelist[index].carFirstStart +
                                          " - ₹" +
                                          comparelist[index].carFirstEnd +
                                          " Lakhs",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          letterSpacing: -0.5,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
