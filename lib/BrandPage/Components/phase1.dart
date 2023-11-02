import 'package:flutter/material.dart';
import 'package:motoroctane/widgets/CarsDatatype.dart';

class PhaseSecondBrand extends StatelessWidget {
  const PhaseSecondBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset('assets/image/landing/landing.jpg'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
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
                    text: "DID YOU ",
                    style: TextStyle(color: Colors.grey.shade600)),
                TextSpan(
                    text: 'KNOW', style: TextStyle(color: Colors.red.shade900))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: Text(
            "Lorem ipsum dolor sit amet, consecteolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey.shade600,
                fontSize: 13),
          ),
        )
      ],
    );
  }
}
