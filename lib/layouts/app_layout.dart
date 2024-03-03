import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/util/app_bar.dart';
import 'package:equals_online_app/util/drawer.dart';
import 'package:flutter/material.dart';

class MainPageLayout extends StatefulWidget {
  const MainPageLayout(
      {super.key, required this.child, required this.title, this.bottom});

  final Widget child;
  final String title;
  final PreferredSizeWidget? bottom;
  @override
  State<MainPageLayout> createState() => _MainPageLayoutState();
}

class _MainPageLayoutState extends State<MainPageLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      body: widget.child,
      drawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(widget.bottom != null
            ? 100
            : 60), // You can adjust the height if needed
        child: MainAppBar(title: widget.title, bottom: widget.bottom),
      ),
    );
  }
}
