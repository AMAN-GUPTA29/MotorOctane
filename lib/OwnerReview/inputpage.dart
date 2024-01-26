import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motoroctane/LandingPage/landingpage.dart';
import 'package:motoroctane/OwnerReview/complete_check.dart';
import 'package:motoroctane/OwnerReview/sliders.dart';
import 'package:motoroctane/OwnerReview/togglebutton.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:motoroctane/OwnerReview/imageinput.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> brands = ['Mercedes', 'BMW', 'Honda'];
  String? selectedBrand;
  List<String> fuels = ['Petrol', 'Diesal', 'CNG'];
  String? selectedFuel;
  List<String> roads = ['Rocky', 'Plain', 'CNG'];
  String? selectedRoad;
  List<String> peopleDrive = ['1', '2', '3'];
  String? selectedPeopleDrive;
  List<String> mileagecity = ['1', '2', '3'];
  String? selectedCityMilage;
  List<String> milagehighway = ['1', '2', '3'];
  String? selectedHighwayyMilage;
  List<String> recommandDelars = ['Yes', 'No'];
  String? selectedrecommandDelars;
  List<String> servicedCarYet = ['Yes', 'No'];
  String? selectedServiceCarsyet;

  final _formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> submitController = {
    '_enteredFirstName': TextEditingController(),
    '_enteredLastName': TextEditingController(),
    '_enteredEmail': TextEditingController(),
  };

  double experiencedealership1 = 0;
  double experiencedealership2 = 0;
  double experiencedealership3 = 0;
  double recommandCartoOther = 0;
  double emotionwithcar = 0;
  double delarshipsalesexperience = 0;
  double overallserviceexperience = 0;

  @override
  Widget build(BuildContext context) {
    var _enteredFirstName = '';
    var _enteredRefrel = '';
    var _enteredLastName = '';
    var _enteredEmail = '';
    var _enteredWhatsapp = '';
    var _enteredMobileNumber = '';
    var _enteredPincode = '';
    var _enteredProfession = '';
    File? _selectedImage;
    var _enteredproductModel = '';
    var _enteredyear = '';
    var _enteredVarient = '';
    var _enteredTransmission = '';
    var _enteredyCarNumber = '';
    var _enteredCarkind = '';
    var _entredDistance = '';
    var _entredModification = '';
    var _entredOverallRange = '';
    var _whyThisCar = '';
    var _enteredfeaturesLearned = '';
    var _enteredCar1 = '';
    var _enteredCar2 = '';
    var _enteredCar3 = '';
    var _entredDealershipname = '';
    var _delershipCity = '';
    var _expCarServiced = '';
    var _expDealerShip = '';
    var _expService = '';
    var _expexpShare = '';
    var _expServicecost = '';
    var _expStory = '';
    bool consultedByUs = false;
    bool safety = false;
    bool features = false;
    bool performance = false;
    bool mileage = false;
    bool space = false;
    bool bootSpace = false;
    bool resale = false;
    bool technology = false;
    bool design = false;
    bool emotionalConnect = false;
    bool others = false;

    var _selectedKindid = 0;

    _saveItem() {
      print(submitController['_enteredLastName']!.text);
      _formKey.currentState!.save();
      print(_formKey.currentState!);
      print(_enteredLastName);
      print(_enteredEmail);
      print(_enteredWhatsapp);
      print(_enteredMobileNumber);
      print(_enteredPincode);
      print(_enteredProfession);
      print(_enteredRefrel);
      print("saving");
    }

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

/////till
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
          backgroundColor: Colors.white,
          drawer: NavDrawer(),
          key: _scaffoldKey,
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
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 210,
                          ),
                          Container(
                            // height: height * 0.54,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirer.png",
                              // scale: 1.2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'Armstrong',
                                        height: 3,
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "OWNER'S REVIEW ",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      TextSpan(
                                          text: 'FORM',
                                          style: TextStyle(
                                              color: Colors.red.shade900))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14.0, right: 14.0),
                                  child: Text(
                                    'This form will make it easy for us to understand everything about the car owner',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        wordSpacing: 0.5,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          controller: submitController[
                                              '_enteredFirstName'],
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'First Name',
                                                style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 13,
                                                  fontFamily: "Montserrat",
                                                ),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     print('value');
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredFirstName = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            controller: submitController[
                                                '_enteredLastName'],
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Last Name',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty ||
                                            //       value.trim().length <= 1 ||
                                            //       value.trim().length > 50) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              _enteredLastName = value;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                TextFormField(
                                  controller: submitController['_enteredEmail'],
                                  decoration: InputDecoration(
                                    label: RichText(
                                      text: TextSpan(
                                        text: 'Email Id',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 13,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ),
                                  ),
                                  // validator: (value) {
                                  //   if (value == null) {
                                  //     return 'Enter Email in right Format.';
                                  //   }

                                  //   return null;
                                  // },
                                  onSaved: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    _enteredEmail = value;
                                  },
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Whatsapp Number',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredWhatsapp = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Email id',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Mobile Number',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredMobileNumber = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 160,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Pincode',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty ||
                                            //       value.trim().length <= 1 ||
                                            //       value.trim().length > 50) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              _enteredPincode = value;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Profession',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredProfession = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 160,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Referred By',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty ||
                                            //       value.trim().length <= 1 ||
                                            //       value.trim().length > 50) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              _enteredRefrel = value;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'Armstrong',
                                        height: 2,
                                        fontSize: 21,
                                        letterSpacing: 1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "YOUR CAR ",
                                          style: TextStyle(
                                              color: Colors.grey.shade600)),
                                      TextSpan(
                                          text: 'DETAILS',
                                          style: TextStyle(
                                              color: Colors.red.shade900))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //////////////////////////////
                                ///
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "BRAND",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.4,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: height * 0.0342,
                                      width: width * 0.29,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.red.shade900,
                                            ),
                                            hint: Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.02),
                                                child: Text(
                                                  "Choose Brand",
                                                  style: TextStyle(
                                                      fontSize: height * 0.015,
                                                      color:
                                                          Colors.grey.shade700,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            value: selectedBrand,
                                            items: brands
                                                .map((item) => DropdownMenuItem(
                                                    value: item,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Text(
                                                        item,
                                                        style: TextStyle(
                                                            fontSize:
                                                                height * 0.018,
                                                            color: Colors
                                                                .grey.shade900),
                                                      ),
                                                    )))
                                                .toList(),
                                            onChanged: (item) {
                                              setState(() {
                                                selectedBrand = item;
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Product Model',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredEmail = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Year',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty ||
                                            //       value.trim().length <= 1 ||
                                            //       value.trim().length > 50) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              _enteredLastName = value;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Varient',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredFirstName = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        width: 160,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 29.0, right: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Fuel Type",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  height: height * 0.0342,
                                                  width: width * 0.35,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors
                                                              .red.shade900,
                                                        ),
                                                        hint: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.02),
                                                            child: Text(
                                                              "Choose Fuel",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.015,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                        value: selectedFuel,
                                                        items: fuels
                                                            .map((item) =>
                                                                DropdownMenuItem(
                                                                    value: item,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: TextStyle(
                                                                            fontSize: height *
                                                                                0.018,
                                                                            color:
                                                                                Colors.grey.shade900),
                                                                      ),
                                                                    )))
                                                            .toList(),
                                                        onChanged: (item) {
                                                          setState(() {
                                                            selectedFuel = item;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 180,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            label: RichText(
                                              text: TextSpan(
                                                text: 'Transmission',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    fontFamily: "Montserrat"),
                                              ),
                                            ),
                                          ),
                                          // validator: (value) {
                                          //   if (value == null ||
                                          //       value.isEmpty ||
                                          //       value.trim().length <= 1 ||
                                          //       value.trim().length > 50) {
                                          //     return 'Must be between 1 and 50 characters.';
                                          //   }

                                          //   return null;
                                          // },
                                          onSaved: (value) {
                                            if (value == null) {
                                              return;
                                            }
                                            _enteredFirstName = value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              label: RichText(
                                                text: TextSpan(
                                                  text: 'Car Number',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      fontFamily: "Montserrat"),
                                                ),
                                              ),
                                            ),
                                            // validator: (value) {
                                            //   if (value == null ||
                                            //       value.isEmpty ||
                                            //       value.trim().length <= 1 ||
                                            //       value.trim().length > 50) {
                                            //     return 'Must be between 1 and 50 characters.';
                                            //   }

                                            //   return null;
                                            // },
                                            onSaved: (value) {
                                              if (value == null) {
                                                return;
                                              }
                                              _enteredLastName = value;
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Uplaod images of you with your car',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ImageInput(
                                  onPickImage: (image) {
                                    _selectedImage = image;
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'What kind of car?',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 13,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                ToggleeButton(
                                  selectedid: _selectedKindid,
                                  firstButton: 'BRAND NEW',
                                  secondButton: 'USED CAR',
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: RichText(
                                      text: TextSpan(
                                        text: 'Approximate kilometers Driven?',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 13,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Enter Email in right Format.';
                                    }

                                    return null;
                                  },
                                  onSaved: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    _enteredEmail = value;
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text:
                                        'Have You made any modification/aftermarket fitment to the vehicle?',
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                ToggleeButton(
                                  selectedid: _selectedKindid,
                                  firstButton: 'YES',
                                  secondButton: 'NO',
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 15,
                                        ),
                                        width: double.infinity,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text:
                                                        'Mostly What kind of road you drive on?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: height * 0.0342,
                                                  width: width * 0.40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors
                                                              .red.shade900,
                                                        ),
                                                        hint: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.02),
                                                            child: Text(
                                                              "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.015,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                        value: selectedRoad,
                                                        items: roads
                                                            .map((item) =>
                                                                DropdownMenuItem(
                                                                    value: item,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: TextStyle(
                                                                            fontSize: height *
                                                                                0.018,
                                                                            color:
                                                                                Colors.grey.shade900),
                                                                      ),
                                                                    )))
                                                            .toList(),
                                                        onChanged: (item) {
                                                          setState(() {
                                                            selectedRoad = item;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        width: double.infinity,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text:
                                                        'How many people drive the car?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: height * 0.0342,
                                                  width: width * 0.40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors
                                                              .red.shade900,
                                                        ),
                                                        hint: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.02),
                                                            child: Text(
                                                              "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.015,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                        value:
                                                            selectedPeopleDrive,
                                                        items: peopleDrive
                                                            .map((item) =>
                                                                DropdownMenuItem(
                                                                    value: item,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: TextStyle(
                                                                            fontSize: height *
                                                                                0.018,
                                                                            color:
                                                                                Colors.grey.shade900),
                                                                      ),
                                                                    )))
                                                            .toList(),
                                                        onChanged: (item) {
                                                          setState(() {
                                                            selectedPeopleDrive =
                                                                item;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        width: double.infinity,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text:
                                                        'Mileage in city (Approx)?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: height * 0.0342,
                                                  width: width * 0.40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors
                                                              .red.shade900,
                                                        ),
                                                        hint: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.02),
                                                            child: Text(
                                                              "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.015,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                        value:
                                                            selectedCityMilage,
                                                        items: mileagecity
                                                            .map((item) =>
                                                                DropdownMenuItem(
                                                                    value: item,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: TextStyle(
                                                                            fontSize: height *
                                                                                0.018,
                                                                            color:
                                                                                Colors.grey.shade900),
                                                                      ),
                                                                    )))
                                                            .toList(),
                                                        onChanged: (item) {
                                                          setState(() {
                                                            selectedCityMilage =
                                                                item;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 15),
                                        width: double.infinity,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text:
                                                        'Mileage in highway (Approx)?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: height * 0.0342,
                                                  width: width * 0.40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child: DropdownButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors
                                                              .red.shade900,
                                                        ),
                                                        hint: Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: width *
                                                                        0.02),
                                                            child: Text(
                                                              "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      height *
                                                                          0.015,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade700,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ),
                                                        value:
                                                            selectedHighwayyMilage,
                                                        items: milagehighway
                                                            .map((item) =>
                                                                DropdownMenuItem(
                                                                    value: item,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        item,
                                                                        style: TextStyle(
                                                                            fontSize: height *
                                                                                0.018,
                                                                            color:
                                                                                Colors.grey.shade900),
                                                                      ),
                                                                    )))
                                                            .toList(),
                                                        onChanged: (item) {
                                                          setState(() {
                                                            selectedHighwayyMilage =
                                                                item;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Container(
                            height: 500,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirel.png",
                              // scale: 1.2,
                              fit: BoxFit.cover,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(
                            height: 210,
                          ),
                          Container(
                            height: 650,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirer.png",
                              // scale: 1.2,
                              fit: BoxFit.cover,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      fontFamily: 'Armstrong',
                                      height: 3,
                                      fontSize: 20,
                                      letterSpacing: 0.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "HOW DID YOU ",
                                        style: TextStyle(
                                            color: Colors.grey.shade600)),
                                    TextSpan(
                                        text: 'FINALISE?',
                                        style: TextStyle(
                                            color: Colors.red.shade900))
                                  ]),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Overall Range (Applicable only to EVs)',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Why this car?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                    "Key reasons to consider this v/s competition?(Pick 3 Reasons)",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                    fontFamily: "Montserrat"),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 20,
                              color: Colors.grey.shade300,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                      Complete_check(
                                        textdata: 'Performance',
                                        ischecked: performance,
                                      ),
                                      Complete_check(
                                        textdata: 'Mileage',
                                        ischecked: mileage,
                                      ),
                                      Complete_check(
                                        textdata: 'Space',
                                        ischecked: space,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                      Complete_check(
                                        textdata: 'Performance',
                                        ischecked: performance,
                                      ),
                                      Complete_check(
                                        textdata: 'Mileage',
                                        ischecked: mileage,
                                      ),
                                      Complete_check(
                                        textdata: 'Space',
                                        ischecked: space,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'One or more features that you learnt after purchasing the car?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Things that lack in this car?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                      Complete_check(
                                        textdata: 'Performance',
                                        ischecked: performance,
                                      ),
                                      Complete_check(
                                        textdata: 'Mileage',
                                        ischecked: mileage,
                                      ),
                                      Complete_check(
                                        textdata: 'Space',
                                        ischecked: space,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                      Complete_check(
                                        textdata: 'Performance',
                                        ischecked: performance,
                                      ),
                                      Complete_check(
                                        textdata: 'Mileage',
                                        ischecked: mileage,
                                      ),
                                      Complete_check(
                                        textdata: 'Space',
                                        ischecked: space,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Three vehicles shortlisted before purchasing this?',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                  fontFamily: "Montserrat"),
                            ),
                            Container(
                              width: double.infinity,
                              height: 20,
                              color: Colors.grey.shade300,
                            ),
                            Column(
                              children: [
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // SizedBox(
                                    //   height: 40,
                                    // ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text(
                                          'Cars',
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13,
                                              fontFamily: "Montserrat"),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Experience at those delerships',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      child: Column(
                                        children: [
                                          TextFormField(),
                                          TextFormField(),
                                          TextFormField(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                          ),
                                          SliderTheme(
                                            data: SliderTheme.of(context)
                                                .copyWith(
                                              trackHeight: 4,
                                              activeTrackColor:
                                                  const Color.fromARGB(
                                                      255, 147, 20, 20),
                                              inactiveTrackColor:
                                                  Colors.grey.shade300,
                                              thumbColor: const Color.fromARGB(
                                                  255, 147, 20, 20),
                                              thumbShape:
                                                  const RoundSliderThumbShape(
                                                enabledThumbRadius: 4,
                                              ),
                                              minThumbSeparation: 10,

                                              // overlayColor: Colors.black,
                                              // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                                            ),
                                            child: Slider(
                                                value: experiencedealership1,
                                                min: 0,
                                                // activeColor: Color.fromARGB(255, 147, 20, 20),
                                                // inactiveColor: Colors.grey.shade300,
                                                max: 100,
                                                divisions: 100,
                                                label: experiencedealership1
                                                    .toStringAsFixed(0),
                                                onChanged: (newValues) {
                                                  setState(() {
                                                    experiencedealership1 =
                                                        newValues;
                                                  });
                                                }),
                                          ),
                                          SliderTheme(
                                            data: SliderTheme.of(context)
                                                .copyWith(
                                              trackHeight: 4,
                                              activeTrackColor:
                                                  const Color.fromARGB(
                                                      255, 147, 20, 20),
                                              inactiveTrackColor:
                                                  Colors.grey.shade300,
                                              thumbColor: const Color.fromARGB(
                                                  255, 147, 20, 20),
                                              thumbShape:
                                                  const RoundSliderThumbShape(
                                                enabledThumbRadius: 4,
                                              ),
                                              minThumbSeparation: 10,

                                              // overlayColor: Colors.black,
                                              // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                                            ),
                                            child: Slider(
                                                value: experiencedealership2,
                                                min: 0,
                                                // activeColor: Color.fromARGB(255, 147, 20, 20),
                                                // inactiveColor: Colors.grey.shade300,
                                                max: 100,
                                                divisions: 100,
                                                label: experiencedealership2
                                                    .toStringAsFixed(0),
                                                onChanged: (newValues) {
                                                  setState(() {
                                                    experiencedealership2 =
                                                        newValues;
                                                  });
                                                }),
                                          ),
                                          SliderTheme(
                                            data: SliderTheme.of(context)
                                                .copyWith(
                                              trackHeight: 4,
                                              activeTrackColor:
                                                  const Color.fromARGB(
                                                      255, 147, 20, 20),
                                              inactiveTrackColor:
                                                  Colors.grey.shade300,
                                              thumbColor: const Color.fromARGB(
                                                  255, 147, 20, 20),
                                              thumbShape:
                                                  const RoundSliderThumbShape(
                                                enabledThumbRadius: 4,
                                              ),
                                              minThumbSeparation: 10,

                                              // overlayColor: Colors.black,
                                              // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                                            ),
                                            child: Slider(
                                                value: experiencedealership3,
                                                min: 0,
                                                // activeColor: Color.fromARGB(255, 147, 20, 20),
                                                // inactiveColor: Colors.grey.shade300,
                                                max: 100,
                                                divisions: 100,
                                                label: experiencedealership3
                                                    .toStringAsFixed(0),
                                                onChanged: (newValues) {
                                                  setState(() {
                                                    experiencedealership3 =
                                                        newValues;
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Any issues with the car?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                      Complete_check(
                                        textdata: 'Features',
                                        ischecked: features,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Would you recommand this car to others?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "No indeed",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            fontFamily: "Montserrat"),
                                      ),
                                      Text(
                                        "Definitly",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ],
                                  ),
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 5,
                                    activeTrackColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    inactiveTrackColor: Colors.grey.shade300,
                                    thumbColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6,
                                    ),
                                    minThumbSeparation: 10,

                                    // overlayColor: Colors.black,
                                    // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                                  ),
                                  child: Slider(
                                      value: recommandCartoOther,
                                      min: 0,
                                      // activeColor: Color.fromARGB(255, 147, 20, 20),
                                      // inactiveColor: Colors.grey.shade300,
                                      max: 100,
                                      divisions: 100,
                                      label: recommandCartoOther
                                          .toStringAsFixed(0),
                                      onChanged: (newValues) {
                                        setState(() {
                                          recommandCartoOther = newValues;
                                        });
                                      }),
                                ),
                                Text(
                                  "What's your emotion with the car?",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Unhappy",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            fontFamily: "Montserrat"),
                                      ),
                                      Text(
                                        "Very Happy",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ],
                                  ),
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 5,
                                    activeTrackColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    inactiveTrackColor: Colors.grey.shade300,
                                    thumbColor:
                                        const Color.fromARGB(255, 147, 20, 20),
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6,
                                    ),
                                    minThumbSeparation: 10,

                                    // overlayColor: Colors.black,
                                    // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                                  ),
                                  child: Slider(
                                      value: emotionwithcar,
                                      min: 0,
                                      // activeColor: Color.fromARGB(255, 147, 20, 20),
                                      // inactiveColor: Colors.grey.shade300,
                                      max: 100,
                                      divisions: 100,
                                      label: emotionwithcar.toStringAsFixed(0),
                                      onChanged: (newValues) {
                                        setState(() {
                                          emotionwithcar = newValues;
                                        });
                                      }),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 120,
                          ),
                          Container(
                            // height: height * 0.54,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirer.png",
                              scale: 1.2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      fontFamily: 'Armstrong',
                                      height: 4,
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "DEALERSHIP ",
                                        style: TextStyle(
                                            color: Colors.grey.shade600)),
                                    TextSpan(
                                        text: 'EXPERIENCE',
                                        style: TextStyle(
                                            color: Colors.red.shade900))
                                  ]),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Name of Dealership?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'City & Area?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rate the dealership sales experience",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "very poor",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10,
                                        fontFamily: "Montserrat"),
                                  ),
                                  Text(
                                    "Excellent",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10,
                                        fontFamily: "Montserrat"),
                                  ),
                                ],
                              ),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 5,
                                activeTrackColor:
                                    const Color.fromARGB(255, 147, 20, 20),
                                inactiveTrackColor: Colors.grey.shade300,
                                thumbColor:
                                    const Color.fromARGB(255, 147, 20, 20),
                                thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 6,
                                ),
                                minThumbSeparation: 10,

                                // overlayColor: Colors.black,
                                // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                              ),
                              child: Slider(
                                  value: delarshipsalesexperience,
                                  min: 0,
                                  // activeColor: Color.fromARGB(255, 147, 20, 20),
                                  // inactiveColor: Colors.grey.shade300,
                                  max: 100,
                                  divisions: 100,
                                  label: delarshipsalesexperience
                                      .toStringAsFixed(0),
                                  onChanged: (newValues) {
                                    setState(() {
                                      delarshipsalesexperience = newValues;
                                    });
                                  }),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Why did you choose this dealership?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Complete_check(
                                          textdata: 'Consulted',
                                          ischecked: consultedByUs),
                                      Complete_check(
                                        textdata: 'Safety',
                                        ischecked: safety,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Did the dealership force sell you anything?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Complete_check(
                                    textdata: 'Insurence',
                                    ischecked: consultedByUs),
                                Complete_check(
                                  textdata: 'Accessories',
                                  ischecked: safety,
                                ),
                                Complete_check(
                                  textdata: 'Extended warranty',
                                  ischecked: safety,
                                ),
                                Complete_check(
                                  textdata: 'Everything',
                                  ischecked: safety,
                                ),
                                Complete_check(
                                  textdata:
                                      'No nothing, the dealership was very good',
                                  ischecked: safety,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 5, top: 5),
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          'Would you recommend this dealer for car buyers?',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 5, top: 5),
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Have you serviced your car yet?',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                  ),
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.0342,
                                  width: width * 0.42,
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
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Text(
                                              "",
                                              style: TextStyle(
                                                  fontSize: height * 0.015,
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        value: selectedrecommandDelars,
                                        items: recommandDelars
                                            .map((item) => DropdownMenuItem(
                                                value: item,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    item,
                                                    style: TextStyle(
                                                        fontSize:
                                                            height * 0.018,
                                                        color: Colors
                                                            .grey.shade900),
                                                  ),
                                                )))
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedrecommandDelars = item;
                                          });
                                        }),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: height * 0.0342,
                                  width: width * 0.42,
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
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Text(
                                              "",
                                              style: TextStyle(
                                                  fontSize: height * 0.015,
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        value: selectedServiceCarsyet,
                                        items: servicedCarYet
                                            .map((item) => DropdownMenuItem(
                                                value: item,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    item,
                                                    style: TextStyle(
                                                        fontSize:
                                                            height * 0.018,
                                                        color: Colors
                                                            .grey.shade900),
                                                  ),
                                                )))
                                            .toList(),
                                        onChanged: (item) {
                                          setState(() {
                                            selectedServiceCarsyet = item;
                                          });
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 170,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            // height: height * 0.54,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirel.png",
                              scale: 2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            // height: height * 0.54,
                            // alignment: Alignment.bottomCenter,
                            // padding: EdgeInsets.only(left: width * 0.13),
                            child: Image.asset(
                              "assets/image/tyre/tirenew/tirer.png",
                              scale: 2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      fontFamily: 'Armstrong',
                                      height: 4,
                                      fontSize: 22,
                                      letterSpacing: 1,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "SERVICE ",
                                        style: TextStyle(
                                            color: Colors.grey.shade600)),
                                    TextSpan(
                                        text: 'EXPERIENCE',
                                        style: TextStyle(
                                            color: Colors.red.shade900))
                                  ]),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Did you get your car serviced at the same dealership or different?If different, then why?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      height: 1.2,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'If different, then name of the Dealer?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Any tips for people who are servicing this car?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Anything you want to share about your dealership service experienced?',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Rate the overall service experience (service, cost, service timeline, transparency, service adviser)",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                  fontFamily: "Montserrat"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "very poor",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10,
                                        fontFamily: "Montserrat"),
                                  ),
                                  Text(
                                    "Excellent",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10,
                                        fontFamily: "Montserrat"),
                                  ),
                                ],
                              ),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 5,
                                activeTrackColor:
                                    const Color.fromARGB(255, 147, 20, 20),
                                inactiveTrackColor: Colors.grey.shade300,
                                thumbColor:
                                    const Color.fromARGB(255, 147, 20, 20),
                                thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 6,
                                ),
                                minThumbSeparation: 10,

                                // overlayColor: Colors.black,
                                // overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                              ),
                              child: Slider(
                                  value: overallserviceexperience,
                                  min: 0,
                                  // activeColor: Color.fromARGB(255, 147, 20, 20),
                                  // inactiveColor: Colors.grey.shade300,
                                  max: 100,
                                  divisions: 100,
                                  label: overallserviceexperience
                                      .toStringAsFixed(0),
                                  onChanged: (newValues) {
                                    setState(() {
                                      overallserviceexperience = newValues;
                                    });
                                  }),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Approx Service Cost - our team will connect later asking for invoices to verify',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Your Story',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 13,
                                      fontFamily: "Montserrat"),
                                  selectionColor: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        print(submitController['_enteredFirstName']!.text);
                        _saveItem();
                      },
                      child: Text(
                        'SUBMIT',
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.only(
                              left: 50, right: 50, top: 2, bottom: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//  "Owner's Review",
                  // style: TextStyle(height: 2, fontSize: 26),