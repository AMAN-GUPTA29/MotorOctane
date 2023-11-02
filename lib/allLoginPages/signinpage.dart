import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/allLoginPages/otp.dart';
import 'package:motoroctane/privacypolicy/privacypolicy.dart';
import 'package:motoroctane/widgets/complete_check.dart';

class signinpage extends StatefulWidget {
  const signinpage({super.key});

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  TextEditingController countryController = TextEditingController();

  var phone = "";
  var verify = "";
  bool ischeckedtermsandCoindition = false;
  int pad = 1;

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, top: 25),
                child: Center(
                  child: Image.asset(
                    'assets/image/genral/companylogo.jpg',
                    scale: height * 0.0073,
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Armstrong',
                        height: 2,
                        fontSize: 23,
                        letterSpacing: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: "GET ",
                          style: TextStyle(color: Colors.grey.shade600)),
                      TextSpan(
                          text: 'STARTED',
                          style: TextStyle(
                              color: Color.fromARGB(255, 171, 55, 58)))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.037,
              ),
              Center(
                child: Text(
                  'Enter Your Mobile Number',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: height * 0.024,
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: height * 0.043,
              ),
              Center(
                child: Container(
                  height: height * 0.075,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 3, color: Color.fromARGB(255, 119, 191, 224)),
                      borderRadius: BorderRadius.circular(35)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.07,
                      ),
                      SizedBox(
                        width: width * 0.08,
                        child: TextField(
                          controller: countryController,
                          style: TextStyle(color: Colors.grey.shade500),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.006,
                      ),
                      Expanded(
                          child: TextField(
                        onChanged: (value) {
                          phone = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "987",
                            hintStyle: TextStyle(color: Colors.grey.shade500)),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Complete_check(ischecked: ischeckedtermsandCoindition),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              height: 1.2,
                              fontSize: 14,
                              wordSpacing: 1.3,

                              // letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: "By continuing, you agree to our ",
                                style: TextStyle(color: Colors.grey.shade500)),
                            TextSpan(
                                text: 'Terms of service',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 171, 55, 58),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1.5,
                                    decorationColor:
                                        Color.fromARGB(255, 171, 55, 58)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('click');
                                  }),
                            TextSpan(
                                text: " and ",
                                style: TextStyle(color: Colors.grey.shade500)),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 171, 55, 58),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1.5,
                                    decorationColor:
                                        Color.fromARGB(255, 171, 55, 58)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrivacyPolicy()),
                                    );
                                  }),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otp()),
                    );
                  },
                  child: Text(
                    'Get OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: "Montserrat"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.only(
                          left: 90, right: 90, top: 15, bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
