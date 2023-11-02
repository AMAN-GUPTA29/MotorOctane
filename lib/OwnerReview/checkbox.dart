import 'package:flutter/material.dart';

class CheckboxExampleApp extends StatelessWidget {
  CheckboxExampleApp({super.key, required this.isChecked});

  bool isChecked;

  @override
  Widget build(BuildContext context) {
    return CheckboxExample(
      isChecked: isChecked,
    );
  }
}

class CheckboxExample extends StatefulWidget {
  CheckboxExample({super.key, required this.isChecked});

  bool isChecked = false;

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.white;
    }

    return Container(
      child: Checkbox(
        checkColor: Colors.red,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: widget.isChecked,
        onChanged: (bool? value) {
          setState(() {
            widget.isChecked = value!;
          });
        },
      ),
    );
  }
}
