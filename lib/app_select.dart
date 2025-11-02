import 'package:flutter/material.dart';

class AppSelect extends StatefulWidget {
  @override
  _AppSelectState createState() => _AppSelectState();
}

class _AppSelectState extends State<AppSelect> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Radio<int>(
              value: 1,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('Option 1'),
          ],
        ),
        Row(
          children: [
            Radio<int>(
              value: 2,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('Option 2'),
          ],
        ),
        Row(
          children: [
            Radio<int>(
              value: 3,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('Option 3'),
          ],
        ),
      ],
    );
  }
}
