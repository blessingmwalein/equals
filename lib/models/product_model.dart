import 'dart:ui';

import 'package:flutter/material.dart';

class Product {
  final String name;
  final String offerDate;
  final double availableAmount;
  final double interest;
  final double tenure;
  final Color color;
  final String currency;
  final String description;
  final bool isAvailable;

  Product(
      {required this.name,
      required this.offerDate,
      required this.availableAmount,
      required this.interest,
      required this.tenure,
      required this.currency,
      required this.description,
      required this.isAvailable,
      required this.color});
}
