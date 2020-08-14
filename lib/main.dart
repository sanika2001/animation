import 'package:flutter/material.dart';
import 'package:animation/Screens/HomeScreen.dart';
import 'Screens/DetailsScreen.dart';
import 'package:flutter/scheduler.dart'
    show timeDilation; /*          New       import     */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        DetailsScreen.id: (context) => DetailsScreen(),
      },
    );
  }
}
