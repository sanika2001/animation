import 'package:flutter/material.dart';
import 'package:animation/Screens/CartScreen.dart';
import 'package:animation/Screens/HomeScreen.dart';

class PageViewScreen extends StatefulWidget {
  static const String id = '/pageview';
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        HomeScreen(),
        CartScreen(),
      ],
    );
  }
}
