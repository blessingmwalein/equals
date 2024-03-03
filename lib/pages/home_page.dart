import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/layouts/app_layout.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/product_card.dart';

import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MainPageLayout(
        title: "Home",
        child: Center(
          child: Text(
            'Equals Online',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
