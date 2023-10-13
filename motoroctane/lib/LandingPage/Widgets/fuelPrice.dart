import 'package:flutter/material.dart';

class FuelPrice extends StatefulWidget {
  const FuelPrice({super.key});

  @override
  State<FuelPrice> createState() => _FuelPriceState();
}

class _FuelPriceState extends State<FuelPrice> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  String? selectedItem;

  List<String> fueltype = ['LPG', 'Petrol', 'Diesal'];
  String? selectedfuel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    return Container(
      padding: EdgeInsets.symmetric(vertical: height * 0.014),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'Armstrong',
                        height: height * 0.0028,
                        fontSize: height * 0.026,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "FUEL ",
                          style: TextStyle(color: Colors.grey.shade600)),
                      TextSpan(
                          text: 'PRICE',
                          style: TextStyle(color: Colors.red.shade900))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.0342,
                      width: width * 0.29,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                            hint: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.02),
                                child: Text(
                                  "Choose City",
                                  style: TextStyle(
                                      fontSize: height * 0.015,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            value: selectedItem,
                            items: items
                                .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: height * 0.018,
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
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.0342,
                      width: width * 0.29,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red.shade900,
                            ),
                            hint: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.02),
                                child: Text(
                                  "Fuel Type",
                                  style: TextStyle(
                                      fontSize: height * 0.015,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            value: selectedfuel,
                            items: fueltype
                                .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: height * 0.018,
                                            color: Colors.grey.shade900),
                                      ),
                                    )))
                                .toList(),
                            onChanged: (item) {
                              setState(() {
                                selectedfuel = item;
                              });
                            }),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            height: height * 0.079,
            width: width * 0.14,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "INR",
                  style: TextStyle(
                      fontSize: height * 0.018,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "100.5",
                  style: TextStyle(
                      fontSize: height * 0.018,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Container(
            height: height * 0.079,
            width: width * 0.14,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
