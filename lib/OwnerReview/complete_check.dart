import 'package:flutter/material.dart';
import 'package:motoroctane/OwnerReview/checkbox.dart';

class Complete_check extends StatelessWidget {
  Complete_check({
    super.key,
    required this.textdata,
    required this.ischecked,
  });

  final textdata;
  bool ischecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckboxExampleApp(
          isChecked: ischecked,
        ),
        Text(
          textdata,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w800,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
