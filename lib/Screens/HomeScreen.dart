import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:animation/Components/PastaCard.dart';
import 'package:animation/Screens/DetailsScreen.dart';
import 'package:page_transition/page_transition.dart';

int count = -1;
List<String> cartList = [];

class HomeScreen extends StatefulWidget {
  static const String id = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFDD0),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Pasta&Noodles",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Icon(
            Icons.edit,
            color: Colors.black,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: ListView.builder(
                            itemCount: cartList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Hero(
                                  tag: "cart$index",
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        width: 40,
                                        imageUrl: cartList[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3, right: 3),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orangeAccent,
                          child: Text(
                            (count++).toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 140,
            decoration: BoxDecoration(
                color: Color(0xFFFFFDD0),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      PastaCard(
                        img:
                            "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
                        name: "Seggiano Organic\nTegeliatelle",
                        price: "\$7.99",
                        qty: "500g",
                        tag: "1",
                      ),
                      PastaCard(
                        img:
                            "https://www.gourmet-versand.com/img_article_v3/101040-fusilli-le-classiche-durum-wheat-semolina-pasta-rummo.jpg",
                        name: "Rummo Fusiulli No\n48 Pasta",
                        price: "\$14.99",
                        qty: "500g",
                        tag: "2",
                        onPress: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: DetailsScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      PastaCard(
                        img:
                            "https://www.gourmet-versand.com/img_article_v3/101040-fusilli-le-classiche-durum-wheat-semolina-pasta-rummo.jpg",
                        name: "Rummo Fusiulli No\n48 Pasta",
                        price: "\$14.99",
                        qty: "500g",
                        tag: "3",
                      ),
                      PastaCard(
                        img:
                            "https://www.seggiano.com/core/media/media.nl?id=51272&c=437323&h=c398070e1dcb84dd4a23",
                        name: "Seggiano Organic\nTegeliatelle",
                        price: "\$7.99",
                        qty: "500g",
                        tag: "4",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
