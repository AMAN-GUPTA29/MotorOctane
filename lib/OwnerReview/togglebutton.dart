import 'package:flutter/material.dart';

class ToggleeButton extends StatefulWidget {
  const ToggleeButton({
    super.key,
    required this.selectedid,
    required this.firstButton,
    required this.secondButton,
  });

  final selectedid;
  final String firstButton;
  final String secondButton;

  @override
  State<ToggleeButton> createState() => _ToggleeButtonState();
}

class _ToggleeButtonState extends State<ToggleeButton> {
  var _selectedKindCar = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedKindCar = 1;
                  });
                },
                style: _selectedKindCar == 0 || _selectedKindCar == 2
                    ? ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white)
                    : ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey.shade600),
                child: Text(
                  widget.firstButton,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedKindCar = 2;
                  });
                },
                style: _selectedKindCar == 0 || _selectedKindCar == 1
                    ? ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white)
                    : ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey.shade600),
                child: Text(
                  widget.secondButton,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
