import 'package:flutter/material.dart';

class ThreeOptionsRadioButtons extends StatefulWidget {
  @override
  _ThreeOptionsRadioButtonsState createState() =>
      _ThreeOptionsRadioButtonsState();
}

class _ThreeOptionsRadioButtonsState extends State<ThreeOptionsRadioButtons> {
  int selectedOption = 2; // Set the default selected option

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRadio("Current Repayment", 1),
        buildRadio("Custom ", 2),
        buildRadio("Full ", 3),
        buildRadio("Arrears ", 4),
      ],
    );
  }

  Widget buildRadio(String label, int value) {
    return Column(
      children: [
        Radio(
          value: value,
          groupValue: selectedOption,
          onChanged: (int? newValue) {
            setState(() {
              selectedOption = newValue!;
            });
          },
        ),
        Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.7)),
        ),
      ],
    );
  }
}
