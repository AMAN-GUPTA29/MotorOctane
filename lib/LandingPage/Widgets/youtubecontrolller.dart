import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:motoroctane/BrandPage/Components/youtube.dart';
import 'package:motoroctane/Youtube/youTube.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Controlleryoutube {
  static late YoutubePlayerController vediocont;

  static YoutubePlayerController assigncont(String link) {
    vediocont = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(link)!,
        flags: YoutubePlayerFlags(
          showLiveFullscreenButton: false,
          autoPlay: false,
        ));

    return vediocont;
  }

  static YoutubePlayerController access() {
    return vediocont;
  }

  static void disposeyoutubecont(YoutubePlayerController currentcont) {
    currentcont.pause();
  }

  // List<YoutubePlayerController> qaz = [];

  // List userList = [];

  // Future<String> getInternalData(String data) async {
  //   return await SecureStorage().readSecureData(data);
  // }

  // resetClass() {
  //   loggedIn = false;
  //   image = "NULL";
  //   print('reset');
  // }

  // getlink() async {
  //   print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');

  //   for (int i = 0; i < links.length; i++) {
  //     var qaz.elementAt(i) = await YoutubePlayerController(
  //         initialVideoId: YoutubePlayer.convertUrlToId(links[i].uRL)!,
  //         flags: YoutubePlayerFlags(
  //           showLiveFullscreenButton: false,
  //           autoPlay: false,
  //         ));
  //   }

  //   print("secondhererererer");

  //   for (int i = 0; i < links.length; i++) {
  //     print(allControlers[i]);
  //   }

  //   // try {
  //   var response = await Dio().get('http://137.184.91.38:5000/enduser');
  //   print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee2');
  //   print(response.statusCode);
  //   if (response.statusCode! >= 200 && response.statusCode! <= 300) {
  //     userList = response.data;
  //     // print(response.data.toString());
  //     // print(response.data.length());
  //     // print(userList.length);
  //     // print(userList[42]);

  //     for (int i = 0; i < userList.length; i++) {
  //       if (userList[i]["_id"] == id && userList[i]["mobile"] == phone) {
  //         loggedIn = true;
  //         image = userList[i]["image"];
  //         print("found");
  //       }
  //     }

  //     print(image);

  //     // print(userList.length());
  //     print("userYesssssssssssssssssssssssssssssss");
  //   } else {
  //     print("Nooooooooooooooooooooooo");
  //   }
  // } catch (e) {}
}
