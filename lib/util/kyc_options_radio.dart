import 'package:flutter/material.dart';

class KycOptionsRadioButtons extends StatefulWidget {
  final List<dynamic> options;

  const KycOptionsRadioButtons({Key? key, required this.options})
      : super(key: key);
  @override
  _KycOptionsRadioButtonsState createState() => _KycOptionsRadioButtonsState();
}

class _KycOptionsRadioButtonsState extends State<KycOptionsRadioButtons> {
  int selectedOption = 1; // Set the default selected option

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var i = 0; i < widget.options.length; i++)
          buildRadio(widget.options[i], i),
      ],
    );
  }

  Widget buildRadio(String label, int value) {
    return Row(
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
