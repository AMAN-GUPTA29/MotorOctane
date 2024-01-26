import 'package:flutter/material.dart';
import 'package:motoroctane/OwnerReview/inputpage.dart';
import 'package:motoroctane/Youtube/youTube.dart';
import 'package:motoroctane/aboutus/aboutUs.dart';
import 'package:motoroctane/allLoginPages/loginpage.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:motoroctane/navigator.dart';
import 'package:motoroctane/servicePage.dart/ServiceNetwork.dart';
import 'package:motoroctane/widgets/headerFooter/test.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 100,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 150,
            child: DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/image/genral/companymo.png",
                    // width: 140,
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.shade900.withOpacity(1),
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ElevatedButton(
                      onPressed: () async {
                        await SecureStorage().deleteSecureData('_id');
                        await SecureStorage().deleteSecureData('mobile');

                        Isloggedin inst = new Isloggedin();
                        await inst.resetClass();

                        Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => Login(),
                            ),
                            (Route<dynamic> route) =>
                                false //if you want to disable back feature set to false
                            );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 147, 20, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Log Out',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Armstrong"),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Cars'),
              onTap: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Consult Us'),
              onTap: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Youtube videos'),
              onTap: () => {
                // Navigator.pop(context),
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Youtube()),
                // ),

                Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => Youtube(),
                    ),
                    (Route<dynamic> route) => false)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Share Reviews'),
              onTap: () => {
                Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => InputPage(),
                    ),
                    (Route<dynamic> route) => false)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('My history / Saved'),
              onTap: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Calculators',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
              onTap: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('About Us'),
              onTap: () => {
                Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => AboutUs(),
                    ),
                    (Route<dynamic> route) => false)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Rate Us'),
              onTap: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Service Network'),
              onTap: () => {
                Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => ServiceNetwork(),
                    ),
                    (Route<dynamic> route) => false)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              title: Text('Test'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Test()),
                )
              },
            ),
          ),
        ],
      ),
    );
  }
}
