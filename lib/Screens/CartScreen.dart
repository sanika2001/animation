import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Column(
              children: <Widget>[
                CartCard(
                  img:
                      "https://target.scene7.com/is/image/Target/GUEST_916bfbc6-5426-484e-954e-009f99ea8fbb?wid=488&hei=488&fmt=pjpeg",
                  name: "Newman's Own Pasta\nSauce Socarooni",
                  price: "\$4.99",
                ),
                CartCard(
                  img:
                      "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
                  name: "Rummo Fusilli\nNo 48 Pasta",
                  price: "\$14.99",
                ),
                CartCard(
                  img:
                      "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
                  name: "Rummo Fusilli\nNo 48 Pasta",
                  price: "\$14.99",
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white10,
                            radius: 20,
                            child: Icon(
                              FontAwesomeIcons.car,
                              color: Colors.orange,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Delivery",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "₹30.00",
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "All orders of ₹40 or more",
                            style: TextStyle(
                              color: Colors.white30,
                            ),
                          ),
                          Text(
                            "qualify for FREE delivery",
                            style: TextStyle(
                              color: Colors.white30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$59.97",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 55,
              child: Card(
                elevation: 5,
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
