import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset(
                "assets/image/genral/companylogo.jpg",
                width: 100,
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/email.png",
                            ),
                            size: 18,
                            color: Colors.grey,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              shape: BoxShape.circle,
                              color: Colors.grey.shade900),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.grey,
                            size: 14,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              shape: BoxShape.circle,
                              color: Colors.grey.shade900),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.grey,
                            size: 14,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              shape: BoxShape.circle,
                              color: Colors.grey.shade900),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          child: Icon(
                            FontAwesomeIcons.youtube,
                            color: Colors.grey,
                            size: 14,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              shape: BoxShape.circle,
                              color: Colors.grey.shade900),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 28,
                          width: 28,
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.grey,
                            size: 14,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.4),
                              shape: BoxShape.circle,
                              color: Colors.grey.shade900),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Text(
                      '©2023',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: double.infinity,
            height: 4,
            color: Colors.grey.shade700,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    const Text(
                      'Powered by ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          wordSpacing: 1.5,
                          fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      'BRAND',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.normal),
                    ),
                    GradientText(
                      'KILN',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.4,
                          fontFamily: "Montserrat"),
                      colors: [Colors.yellow.shade400, Colors.red.shade800],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
