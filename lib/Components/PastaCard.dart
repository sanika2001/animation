import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PastaCard extends StatelessWidget {
  final String img;
  final String name;
  final String qty;
  final String price;
  final Function onPress;
  final String tag;

  PastaCard(
      {this.name, this.qty, this.img, this.price, this.onPress, this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 250,
        width: 180,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                  child: Hero(
                    tag: tag,
                    child: CachedNetworkImage(
                      height: 80,
                      width: 100,
                      imageUrl: img,
                    ),
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  qty,
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
