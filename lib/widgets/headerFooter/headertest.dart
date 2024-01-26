import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motoroctane/LandingPage/landingPage.dart';
import 'package:motoroctane/allLoginPages/secureStorage.dart';
import 'package:motoroctane/drawer/drawer.dart';
import 'package:motoroctane/navigator.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';
import 'package:motoroctane/widgets/profilechange/profileedit.dart';

class HeaderAlltest extends StatefulWidget implements PreferredSizeWidget {
  HeaderAlltest({super.key, required this.appBar, required this.drawerr});

  final AppBar appBar;
  //  Function() drawww = drawer;
  var drawerr;

  @override
  State<HeaderAlltest> createState() => _HeaderAlltestState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height + 8);
}

class _HeaderAlltestState extends State<HeaderAlltest> {
  @override
  void initState() {
    // getProfile();
    Isloggedin inst = new Isloggedin();

    login = Isloggedin.loggedIn;
    image = Isloggedin.image;

    print("${login}+hai login sir");
    print(Isloggedin.image);
    print(Isloggedin.loggedIn);
    print(image);

    super.initState();
  }

  List userList = [];
  String id = "";
  String phone = "";
  bool found = false;
  bool login = false;
  String image = "NULL";
  // Image? photo;

  void getProfile() async {
    // id = SecureStorage().readSecureData('_id');
    // phone = SecureStorage().readSecureData('mobile');

    // print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    // try {
    //   var response = await Dio().get('http://137.184.91.38:5000/enduser');
    //   print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
    //   print(response.statusCode);
    //   if (response.statusCode! >= 200 && response.statusCode! <= 300) {
    //     userList = response.data;
    //     for (var object in userList) {
    //       if (object._id == id) {
    //         found = true;
    //       }
    //     }
    //     print(found);
    //     setState(() {
    //       // print(response.data.toString());
    //       // print(response.data.length());
    //       print(userList.length);
    //       print(userList[1]);
    //       // print(userList.length());
    //       print("userYesssssssssssssssssssssssssssssss");
    //     });
    //   } else {
    //     print("Nooooooooooooooooooooooo");
    //   }
    // } catch (e) {
    //   // setState(() {});
    // }

    Isloggedin inst = new Isloggedin();

    login = await Isloggedin.loggedIn;
    image = await Isloggedin.image;

    print("${login}+hai bhai");
    print(image);

    if (login == true) {
      // http://137.184.91.38:5000/userImages/${item.image}

      print("inside true");

      try {
        var response =
            await Dio().get('http://137.184.91.38:5000/userImages/$image');
        print('Image Found');
        print(response.statusCode);
        if (response.statusCode! >= 200 && response.statusCode! <= 300) {
          // userList = response.data;
          // print(response.data.toString());
          // print(response.data.length());
          // print(userList.length);
          // print(userList[42]);

          // for (int i = 0; i < userList.length; i++) {
          //   if (userList[i]["_id"] == id && userList[i]["mobile"] == phone) {
          //     loggedIn = true;
          //     image = userList[i]["image"];
          //     print("found");
          //   }
          // }
          // print(response.data[0]);

          // print(response.data[0].runtimeType);
          // print("heyyyyyyyyyy phpot done");

          // print(image);

          // print(userList.length());
          print("image done");
        } else {
          print("Nooooooooooooooooooooooo");
        }
      } catch (e) {}
    }
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    void _setScreen(String identfier) async {
      if (identfier == 'filters') {
        // Navigator.of(context).pop();
        // await Navigator.of(context).push<Map<Filter, bool>>(
        //   MaterialPageRoute(
        //     builder: (ctx) => const FiltersScreen(),
        //   ),
        // );
      } else {
        Navigator.of(context).pop();
      }
    }

    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => LandingPage(),
                ),
                (Route<dynamic> route) => false);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 10, left: 10),
            child: Image.asset(
              "assets/image/genral/companylogo.jpg",
              width: 100,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CupertinoButton(
              minSize: double.minPositive,
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: ImageIcon(
                AssetImage(
                  "assets/icons/location.png",
                ),
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: CupertinoButton(
              minSize: double.minPositive,
              padding: EdgeInsets.zero,
              onPressed: () {
                // _scaffoldKey.currentState?.openDrawer();
                setState(() {
                  widget.drawerr();
                });
              },
              child: SvgPicture.asset(
                'assets/icons/hamburger_menu.svg',
                color: Colors.white,
                width: 18,
                height: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 0),
            child: InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => EditProfile(),
                    ),
                    (Route<dynamic> route) => false);
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage("assets/image/profile/profile.jpg"),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Transform.scale(
                    scale: 1,
                    child: login == true
                        ? Image.network(
                            "http://137.184.91.38:5000/userImages/$image",
                            alignment: Alignment.center,
                          )
                        : Image(
                            // fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/image/profile/profile.jpg",
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // @override
}

//  backgroundImage: AssetImage("assets/image/profile/profile.jpg"),
