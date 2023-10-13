import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motoroctane/LandingPage/landingPage.dart';
import 'package:motoroctane/allLoginPages/welcome.dart';
import 'package:motoroctane/welcome.dart';
import 'package:motoroctane/widgets/gender.dart';
import 'package:intl/date_symbol_data_local.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Gender? _selectedGender;

  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;
    final _formKey = GlobalKey<FormState>();

    return SafeArea(
        child: Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) =>
                                    LandingPage(),
                              ),
                              (Route<dynamic> route) =>
                                  false //if you want to disable back feature set to false
                              );
                        },
                        icon: Icon(Icons.close))
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/image/profile/profile.jpg'),
                            radius: height * 0.075,
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Center(
                        child: Text(
                          "Select Profile Photo",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.023),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.017,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 180,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: RichText(
                                      text: TextSpan(
                                        text: 'First Name',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 171, 55, 58),
                                          fontWeight: FontWeight.w800,
                                          fontSize: height * 0.021,
                                        ),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.trim().length <= 1 ||
                                        value.trim().length > 50) {
                                      print('value');
                                      return 'Must be between 1 and 50 characters.';
                                    }

                                    return null;
                                  },
                                  onSaved: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    // _enteredFirstName = value;
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 29.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Last Name',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 171, 55, 58),
                                              fontWeight: FontWeight.w800,
                                              fontSize: height * 0.021),
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      // _enteredLastName = value;
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: RichText(
                              text: TextSpan(
                                text: 'Email Id',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 171, 55, 58),
                                    fontWeight: FontWeight.w800,
                                    fontSize: height * 0.021),
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
                            // _enteredEmail = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.022,
                      ),
                      Center(
                        child: Row(
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
                                          color:
                                              Color.fromARGB(255, 171, 55, 58),
                                          fontWeight: FontWeight.w800,
                                          fontSize: height * 0.021,
                                        ),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.trim().length <= 1 ||
                                        value.trim().length > 50) {
                                      return 'Must be between 1 and 50 characters.';
                                    }

                                    return null;
                                  },
                                  onSaved: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    // _enteredMobileNumber = value;
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 29.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      label: RichText(
                                        text: TextSpan(
                                          text: 'Pincode',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 171, 55, 58),
                                            fontWeight: FontWeight.w800,
                                            fontSize: height * 0.021,
                                          ),
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Must be between 1 and 50 characters.';
                                      }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      // _enteredPincode = value;
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.022,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    labelText: "Gender",
                                    labelStyle: TextStyle(
                                        color: Color.fromARGB(255, 171, 55, 58),
                                        fontSize: height * 0.021,
                                        fontWeight: FontWeight.bold),
                                    floatingLabelStyle: TextStyle(
                                        color: Color.fromARGB(255, 171, 55, 58),
                                        fontSize: height * 0.021,
                                        fontWeight: FontWeight.bold)),
                                value: _selectedGender,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromARGB(255, 171, 55, 58),
                                ),
                                items: Gender.values
                                    .map(
                                      (category) => DropdownMenuItem(
                                        value: category,
                                        child: Text(
                                          category.name.toUpperCase(),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  if (value == null) {
                                    return;
                                  }
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 29.0),
                                  child: TextFormField(
                                    controller: _date,
                                    onTap: () async {
                                      DateTime? pickeddate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100),
                                      );
                                      if (pickeddate != null) {
                                        setState(() {
                                          _date.text = DateFormat("yyyy-MM-dd")
                                              .format(pickeddate);
                                        });
                                      }
                                    },
                                    decoration: InputDecoration(
                                      label: Wrap(children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'Birth Date    ',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 171, 55, 58),
                                              fontWeight: FontWeight.w800,
                                              fontSize: height * 0.021,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            child: Icon(
                                          Icons.calendar_month,
                                          color:
                                              Color.fromARGB(255, 171, 55, 58),
                                          size: 17,
                                        ))
                                      ]),
                                    ),
                                    validator: (value) {
                                      // if (value == null ||
                                      //     value.isEmpty ||
                                      //     value.trim().length <= 1 ||
                                      //     value.trim().length > 50) {
                                      //   return 'Must be between 1 and 50 characters.';
                                      // }

                                      return null;
                                    },
                                    onSaved: (value) {
                                      if (value == null) {
                                        return;
                                      }
                                      // entered gender=
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        width: width * 0.6,
                        height: height * 0.05,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Welcomee()),
                              );
                            },
                            child: Text(
                              'SAVE',
                            ),
                            style: ElevatedButton.styleFrom(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey.shade700)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
