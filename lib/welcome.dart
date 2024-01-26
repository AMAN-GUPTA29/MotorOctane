import 'package:flutter/material.dart';
import 'package:motoroctane/AssistMe/AssistMepagefifth.dart';
import 'package:motoroctane/AssistMe/AssistMepagefirst.dart';
import 'package:motoroctane/AssistMe/AssistMepagefourth.dart';
import 'package:motoroctane/AssistMe/AssistMepagesixth.dart';
import 'package:motoroctane/AssistMe/AssistMepagethird.dart';
import 'package:motoroctane/AssistMe/assistMePagesecond.dart';
import 'package:motoroctane/BrandPage/brandPage.dart';
import 'package:motoroctane/LandingPage/landingPage.dart';
import 'package:motoroctane/OwnerReview/inputpage.dart';
import 'package:motoroctane/Youtube/youTube.dart';
import 'package:motoroctane/aboutus/aboutUs.dart';
import 'package:motoroctane/allLoginPages/loginpage.dart';
import 'package:motoroctane/allLoginPages/otp.dart';
import 'package:motoroctane/allLoginPages/register.dart';
import 'package:motoroctane/allLoginPages/signinpage.dart';
import 'package:motoroctane/allLoginPages/welcome.dart';
import 'package:motoroctane/privacypolicy/privacypolicy.dart';
import 'package:motoroctane/productpage/productPage.dart';
import 'package:motoroctane/servicePage.dart/ServiceNetwork.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  void tocontent(String value, BuildContext context) {
    if (value == 'Login') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
    if (value == 'Login2') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => signinpage()),
      );
    }
    if (value == 'otppage') {
      print("ggg");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Otp()),
      );
    }
    if (value == 'register') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Register()),
      );
    }
    // if (value == 'welcome') {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => Welcomee()),
    //   );
    // }
    if (value == 'privacy') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrivacyPolicy()),
      );
    }
    // if (value == 'Branding') {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => BrandPage()),
    //   );
    // }
    if (value == 'Landing') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    }
    if (value == 'Assistmefirst') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeFirst()),
      );
    }
    if (value == 'Assistmesecond') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeSecond()),
      );
    }
    if (value == 'Assistmethird') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeThird()),
      );
    }
    if (value == 'Assistmefourth') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeFourth()),
      );
    }
    if (value == 'Assistmefifth') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeFifth()),
      );
    }
    if (value == 'Assistmesixth') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AssistmeSixth()),
      );
    }
    if (value == 'Service') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ServiceNetwork()),
      );
    }
    if (value == 'Youtube') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Youtube()),
      );
    }
    if (value == 'Review') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InputPage()),
      );
    }
    if (value == 'AboutUs') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AboutUs()),
      );
    }
    // if (value == 'Product') {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => ProductPage()),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  tocontent('Login', context);
                },
                child: Text('Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Login2', context);
                },
                child: Text('Login2'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('otppage', context);
                },
                child: Text('OTP'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('register', context);
                },
                child: Text('register'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('welcome', context);
                },
                child: Text('welcome'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Branding', context);
                },
                child: Text('Brand'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Landing', context);
                },
                child: Text('Landing'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('privacy', context);
                },
                child: Text('privacy'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmefirst', context);
                },
                child: Text('Assist 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmesecond', context);
                },
                child: Text('Assist 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmethird', context);
                },
                child: Text('Assist 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmefourth', context);
                },
                child: Text('Assist 4'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmefifth', context);
                },
                child: Text('Assist 5'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Assistmesixth', context);
                },
                child: Text('Assist 6'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Service', context);
                },
                child: Text('Service Network'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Youtube', context);
                },
                child: Text('Youtube'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Review', context);
                },
                child: Text('Review'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('AboutUs', context);
                },
                child: Text('AboutUs'),
              ),
              ElevatedButton(
                onPressed: () {
                  tocontent('Product', context);
                },
                child: Text('Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
