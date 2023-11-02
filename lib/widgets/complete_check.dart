import 'package:flutter/material.dart';
import 'package:motoroctane/widgets/checkbox.dart';

class Complete_check extends StatelessWidget {
  Complete_check({
    super.key,
    required this.ischecked,
  });

  bool ischecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckboxExampleApp(
          isChecked: ischecked,
        ),
      ],
    );
  }
}
