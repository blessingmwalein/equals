import 'package:flutter/material.dart';

class OutlinedDatePicker extends StatelessWidget {
  final String labelText;
  final DateTime selectedDate;
  final Function(BuildContext) selectDate;

  OutlinedDatePicker({
    required this.labelText,
    required this.selectedDate,
    required this.selectDate,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDate(context),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Text(
              '$labelText: ${selectedDate.toLocal()}'.split(' ')[0],
              style: const TextStyle(fontSize: 16),
            ),
            const Icon(
              Icons.calendar_today,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
