import 'package:flutter/material.dart';
import 'package:animation/Screens/HomeScreen.dart';
import 'Screens/DetailsScreen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:animation/Screens/PageViewScreen.dart';
import 'package:animation/Screens/CartScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CartScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        DetailsScreen.id: (context) => DetailsScreen(),
        PageViewScreen.id: (context) => PageViewScreen(),
        CartScreen.id: (context) => CartScreen(),
      },
    );
  }
}
