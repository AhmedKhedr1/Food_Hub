import 'package:flutter/material.dart';

class SaveCardCheckbox extends StatefulWidget {
  const SaveCardCheckbox({super.key});

  @override
  State<SaveCardCheckbox> createState() => _SaveCardCheckboxState();
}

bool IsSaved = false;

class _SaveCardCheckboxState extends State<SaveCardCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: IsSaved,
          fillColor: IsSaved
              ? MaterialStateProperty.all(Color(0xffEF2A39))
              : MaterialStateProperty.all(Colors.white),
          onChanged: (value) => setState(() {
            IsSaved = !IsSaved;
          }),
        ),

        Text(
          'Save card details for future payments',
          style: TextStyle(
            color: Color(0xff808080),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
