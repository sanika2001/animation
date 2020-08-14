import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animation/Components/CartCard.dart';

class CartScreen extends StatefulWidget {
  static const String id = '/cart';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 20, left: 33),
              child: Row(
                children: <Widget>[
                  Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            CartCard(
              img:
                  "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
              name: "Newman's Own Pasta\nSauce Socarooni",
              price: "\$4.99",
            ),
            CartCard(
              img:
                  "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
              name: "Rummo Fusilli\nNo 48 Pasta",
              price: "\$14.99",
            ),
          ],
        ),
      ),
    );
  }
}
