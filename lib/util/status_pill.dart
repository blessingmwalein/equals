import 'package:equals_online_app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget statusPill(String status) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: status == 'COMPLETED' ? primaryAlertBlue : primaryAlert,
      borderRadius: BorderRadius.circular(5),
      //add border
      border: Border.all(
        color: status == 'COMPLETED' ? Colors.blue : Colors.green,
        width: 1,
      ),
    ),
    child: Text(
      status,
      style: TextStyle(
        color: status == 'COMPLETED' ? Colors.blue : Colors.green,
        fontSize: 13,
      ),
    ),
  );
}
