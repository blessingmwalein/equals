import 'package:flutter/material.dart';

class StatusDropdown extends StatefulWidget {
  @override
  _StatusDropdownState createState() => _StatusDropdownState();
}

class _StatusDropdownState extends State<StatusDropdown> {
  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Choose Value',
          border: OutlineInputBorder(),
        ),
        value: selectedStatus,
        onChanged: (String? newValue) {
          setState(() {
            selectedStatus = newValue;
          });
        },
        items: <String>['Reduce Tenure', 'Reduce Repayment']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
