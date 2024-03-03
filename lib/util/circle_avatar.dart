import 'package:equals_online_app/models/product_model.dart';
import 'package:flutter/material.dart';

Widget circleAvatar(Product product) {
  return CircleAvatar(
    backgroundColor: product.color,
    radius: 25.0,
    child: Text(
      product.name[0].toUpperCase(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 35.0,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
