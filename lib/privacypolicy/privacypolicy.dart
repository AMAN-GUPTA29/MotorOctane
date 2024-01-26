import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:motoroctane/privacypolicy/privacydata.dart';
import 'package:motoroctane/widgets/headerFooter/footer.dart';

import 'package:motoroctane/widgets/headerFooter/header.dart';
import 'package:motoroctane/widgets/headerFooter/headertest.dart';
import 'package:motoroctane/widgets/headerFooter/navDrawer.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({super.key});

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(Object context) {
    Function() drawww = () {
      _scaffoldKey.currentState?.openDrawer();
    };

    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      appBar: HeaderAlltest(
        appBar: AppBar(),
        drawerr: drawww,
      ),
      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            print("whatsapp");
            // _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset("assets/icons/whatsapp.png"),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/genral/trackn.png"),
                    fit: BoxFit.cover,
                    opacity: 1)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Armstrong',
                              height: 4,
                              fontSize: 24,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "PRIVACY ",
                                style: TextStyle(color: Colors.grey.shade600)),
                            TextSpan(
                                text: 'POLICY',
                                style: TextStyle(color: Colors.red.shade900))
                          ],
                        ),
                      ),
                      for (var item in privacypolicydata)
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20, left: 7, right: 7),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                              Expanded(
                                child: Text(
                                  item,
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 15, right: 7),
                        child: Text(
                          "Please Note:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                              fontSize: 24),
                        ),
                      ),
                      for (var item in privacypolicydataNote)
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 7, right: 7),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "•",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                                Expanded(
                                  child: Text(
                                    item,
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                    ],
                  ),
                ),
                Footer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
