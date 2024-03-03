import 'package:flutter/material.dart';

class AcceptTermsCheckbox extends StatefulWidget {
  @override
  _AcceptTermsCheckboxState createState() => _AcceptTermsCheckboxState();
}

class _AcceptTermsCheckboxState extends State<AcceptTermsCheckbox> {
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: acceptTerms,
          onChanged: (bool? newValue) {
            setState(() {
              acceptTerms = newValue!;
            });
          },
        ),
        const Flexible(
          child: Text(
            'I have read and agree with terms and conditions of this product.',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
