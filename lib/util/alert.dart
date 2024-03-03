import 'package:equals_online_app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget alertMessage(String text) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: primaryAlert,
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green.withOpacity(0.5),
          radius: 19.0,
          child: const Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        // Use Flexible or Expanded for the Text widget
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}
