import 'package:flutter/material.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                SecureStorage().readSecureData('_id');
                SecureStorage().readSecureData('image');
                SecureStorage().readSecureData('fname');
                SecureStorage().readSecureData('lname');
                SecureStorage().readSecureData('email');
                SecureStorage().readSecureData('mobile');
                SecureStorage().readSecureData('pin');
                SecureStorage().readSecureData('DOB');
                SecureStorage().readSecureData('profession');
                SecureStorage().readSecureData('gender');
                SecureStorage().readSecureData('wheredidyouhearus');
              },
              child: Text("Check")),
          ElevatedButton(
              onPressed: () {
                SecureStorage().deleteSecureData('_id');
                SecureStorage().deleteSecureData('image');
                SecureStorage().deleteSecureData('fname');
                SecureStorage().deleteSecureData('lname');
                SecureStorage().deleteSecureData('email');
                SecureStorage().deleteSecureData('mobile');
                SecureStorage().deleteSecureData('pin');
                SecureStorage().deleteSecureData('DOB');
                SecureStorage().deleteSecureData('profession');
                SecureStorage().deleteSecureData('gender');
                SecureStorage().deleteSecureData('wheredidyouhearus');
              },
              child: Text("Remove"))
        ],
      ),
    );
  }
}
