import 'package:flutter/material.dart';

class Sliderss extends StatefulWidget {
  const Sliderss({super.key, required this.size});

  final bool size;

  @override
  State<Sliderss> createState() => _SliderssState();
}

class _SliderssState extends State<Sliderss> {
  int slider = 50;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red.shade900,
        inactiveTrackColor: Color(0XFF8D8E98),
        thumbColor: Color(0xFFEB1555),
        thumbShape: widget.size == false
            ? RoundSliderThumbShape(
                enabledThumbRadius: 5.0,
              )
            : RoundSliderThumbShape(enabledThumbRadius: 10),
        minThumbSeparation: 10,
      ),
      child: Slider(
          value: slider.toDouble(),
          min: 0.0,
          max: 100.0,
          onChanged: (double newValue) {
            setState(() {
              slider = newValue.round();
              print(slider);
            });
          }),
    );
  }
}
