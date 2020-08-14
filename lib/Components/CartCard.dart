import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CartCard extends StatelessWidget {
  final String img;
  final String name;
  final String price;

  CartCard({this.price, this.name, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 33, right: 18, bottom: 15, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: ClipOval(
                  child: CachedNetworkImage(
                    width: 40,
                    imageUrl: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                price,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
