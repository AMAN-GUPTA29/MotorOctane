import 'package:flutter/material.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class ThirdPhaseBrand extends StatefulWidget {
  const ThirdPhaseBrand({super.key});

  @override
  State<ThirdPhaseBrand> createState() => _ThirdPhaseState();
}

class _ThirdPhaseState extends State<ThirdPhaseBrand> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                    fontFamily: 'Armstrong',
                    height: 2,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: "USERS ",
                      style: TextStyle(color: Colors.grey.shade600)),
                  TextSpan(
                      text: 'REVIEWS',
                      style: TextStyle(color: Colors.red.shade900))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 6),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5.0,
                    offset: Offset(0.0, 3.0))
              ],
            ),
            child: Row(children: [
              Container(
                width: 185,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tqua. ostrud exercitation ullamco laboris ni",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey.shade600,
                        fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/image/carimage/second.png',
                width: 120,
              )
            ]),
          ),
        )
      ],
    );
  }
}
