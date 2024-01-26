import 'package:flutter/material.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:motoroctane/allLoginPages/signinpage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  'assets/image/genral/companylogo.jpg',
                  scale: height * 0.007,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                '"New User?"',
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: height * 0.024,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(
                height: height * 0.045,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signinpage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.only(
                        left: width * 0.257,
                        right: width * 0.257,
                        top: 12,
                        bottom: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Montserrat"),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
