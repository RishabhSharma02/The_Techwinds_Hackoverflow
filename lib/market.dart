import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Mymarket extends StatefulWidget {
  const Mymarket({Key? key}) : super(key: key);

  @override
  State<Mymarket> createState() => _Mymarketstate();
}

class _Mymarketstate extends State<Mymarket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardtextStyle =
        GoogleFonts.cabin(fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 81, 244),
        title: Text("Marketplace"),
        titleTextStyle: GoogleFonts.cabin(
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          activeColor: Color.fromARGB(255, 255, 254, 254),
          tabBackgroundColor: Color.fromARGB(255, 83, 100, 232),
          gap: 20,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.star,
              text: "Favorites",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.sort,
              text: "Sort by",
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P25.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Wheat    ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P26.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Mustard   ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P24.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Millet    ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P22.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Turmeric    ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P21.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Flower oil ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P20.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Oil         ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P23.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Red Chilli  ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/P18.jpeg",
                        ),
                        width: 150,
                        height: 120,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: InkWell(
                          child: Text(
                            "Sugar cane  ₹500",
                            style: cardtextStyle,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        )
      ]),
    );
  }
}
