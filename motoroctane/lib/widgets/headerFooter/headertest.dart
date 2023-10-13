import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motoroctane/drawer/drawer.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';

class HeaderAlltest extends StatelessWidget {
  HeaderAlltest({super.key, required this.appBar});

  final AppBar appBar;

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
        title: Padding(
          padding: const EdgeInsets.only(bottom: 15, top: 10, left: 10),
          child: Image.asset(
            "assets/image/genral/companylogo.jpg",
            width: 100,
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
                _scaffoldKey.currentState?.openDrawer();
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
                print("image clicked");
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
                    child: Image(
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
  // Size get preferredSize => Size.fromHeight(appBar.preferredSize.height + 1000);
}


//  backgroundImage: AssetImage("assets/image/profile/profile.jpg"),