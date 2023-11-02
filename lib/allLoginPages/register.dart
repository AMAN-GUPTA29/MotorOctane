import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motoroctane/LandingPage/landingPage.dart';
import 'package:motoroctane/allLoginPages/pickimage.dart';
import 'package:motoroctane/allLoginPages/welcome.dart';
import 'package:motoroctane/welcome.dart';
import 'package:motoroctane/widgets/gender.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Gender? _selectedGender;
  String? _enteredFirstName;
  String? _pickeddateprofile;
  String? _enteredLastName;
  String? _enteredEmail;
  String? _enteredMobileNumber;
  String? _enteredPincode;
  // Uint8List? _image;
  XFile? pickedFile;
  bool dataupload = false;

  // final url = "http://137.184.91.38:5000/api/enduser";

  var dio = Dio();

  Future<void> postData() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 171, 55, 58),
          ),
        );
      },
    );

    try {
      Dio dio = Dio();

      if (pickedFile != null) {
        FormData formData = FormData.fromMap({
          "image": await MultipartFile.fromFile(pickedFile!.path,
              filename: 'profile.jpg'),
          'fname': _enteredFirstName,
          'lname': _enteredLastName,
          'email': _enteredEmail,
          'mobile': _enteredMobileNumber,
          'pin': _enteredPincode,
          'DOB': _pickeddateprofile,
        });

        Response response = await dio
            .post('http://137.184.91.38:5000/api/enduser', data: formData);

        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          Navigator.of(context).pop();
          print(response.statusCode);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Welcomee(
                      dp: pickedFile!,
                    )),
          );
        } else {
          Navigator.of(context).pop();
          print("Image UPload failed");
        }
      } else {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            duration: Duration(seconds: 3),
            content: Center(
              child: Text(
                'Upload Image',
                style: TextStyle(fontFamily: "Montserrat"),
              ),
            ),
          ),
        );
      }
    } catch (error) {
      Navigator.of(context).pop();
      print(error);
    }
  }

  // postData() async {
  //   final url = Uri.parse('http://137.184.91.38:5000/api/enduser');

  //   print("data sending start");
  //   final response = await http.post(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: json.encode(
  //       {
  //         'image': _image,
  //         'fname': _enteredFirstName,
  //         'lname': _enteredLastName,
  //         'email': _enteredEmail,
  //         'mobile': _enteredMobileNumber,
  //         'pin': _enteredPincode,
  //         'DOB': _pickeddateprofile,
  //       },
  //     ),
  //   );
  //   print("data sending end");

  //   print(response.statusCode);

  //   print(response.body);

  //   final Map<String, dynamic> resData = json.decode(response.body);

  //   print(resData);
  // }

  // postData() async {
  //   final url = Uri.parse('http://jsonplaceholder.typicode.com/posts');

  //   print("data sending start");
  //   final response = await http.post(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: json.encode(
  //       {
  //         'image': _image,
  //         'fname': _enteredFirstName,
  //         'lname': _enteredLastName,
  //         'email': _enteredEmail,
  //         'mobile': _enteredMobileNumber,
  //         'pin': _enteredPincode,
  //         'DOB': _pickeddateprofile,
  //       },
  //     ),
  //   );
  //   print("data sending end");

  //   print(response.statusCode);
  //   print(response.body);

  //   final Map<String, dynamic> resData = json.decode(response.body);

  //   // print(resData);
  // }

  void checker() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      postData();
      // print('valid');
    }

    // print(_enteredFirstName);
    // print(_selectedGender);
    // print(_pickeddateprofile);
    // print(_enteredLastName);
    // print(_enteredEmail);
    // print(_enteredMobileNumber);
    // print(_enteredPincode);
  }

  bool isAPIcallProcess = false;

  void selectImage() async {
    final picker = ImagePicker();
    pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedFile;
    });
  }

  TextEditingController _date = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height1 = size.height;

// Height (without SafeArea)
    final padding = MediaQuery.of(context).viewPadding;
    double height = height1 - padding.top - padding.bottom;

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
                          child: pickedFile != null
                              ? CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: height * 0.08,
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: Transform.scale(
                                        scale: 1,
                                        child: Image.file(
                                          File(
                                            pickedFile!.path,
                                          ),
                                          fit: BoxFit.cover,
                                          height: 600,
                                          width: 600,
                                        )),
                                  ),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: height * 0.08,
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: Transform.scale(
                                      scale: 1,
                                      child: Image(
                                        // fit: BoxFit.contain,
                                        image: AssetImage(
                                          "assets/image/profile/blankimagee.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                        // height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            selectImage();
                          },
                          child: Text(
                            "Select Profile Photo",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.023),
                          ),
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
                                      return '1 to 50 chars accepted';
                                    }

                                    return null;
                                  },
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
                                        return '1 to 50 chars accepted';
                                      }

                                      return null;
                                    },
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
                            _enteredEmail = value;
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
                                      return '10 Char Required';
                                    }

                                    return null;
                                  },
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
                                        return '6 Char Required';
                                      }

                                      return null;
                                    },
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
                                          _date.text = DateFormat("dd/MM/yyyy")
                                              .format(pickeddate);
                                          print(_date.text);
                                          _pickeddateprofile = _date.text;
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
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50) {
                                        return 'Required Field';
                                      }

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
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => Welcomee()),
                              // );

                              checker();
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
