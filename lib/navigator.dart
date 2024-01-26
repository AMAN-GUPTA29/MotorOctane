import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';

class Isloggedin {
  static bool loggedIn = false;
  static String image = "NULL";

  List userList = [];

  Future<String> getInternalData(String data) async {
    return await SecureStorage().readSecureData(data);
  }

  resetClass() {
    loggedIn = false;
    image = "NULL";
    print('reset');
  }

  getProfile() async {
    String id = await getInternalData("_id");
    String phone = await getInternalData("mobile");

    print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    print(id);
    print(phone);
    try {
      var response = await Dio().get('http://137.184.91.38:5000/enduser');
      print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee2');
      print(response.statusCode);
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        userList = response.data;
        // print(response.data.toString());
        // print(response.data.length());
        // print(userList.length);
        // print(userList[42]);

        for (int i = 0; i < userList.length; i++) {
          if (userList[i]["_id"] == id && userList[i]["mobile"] == phone) {
            loggedIn = true;
            image = userList[i]["image"];
            print("found");
          }
        }

        print(image);

        // print(userList.length());
        print("userYesssssssssssssssssssssssssssssss");
      } else {
        print("Nooooooooooooooooooooooo");
      }
    } catch (e) {}
  }
}
