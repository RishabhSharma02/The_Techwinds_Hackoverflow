import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _Homescreenstate();
}

class _Homescreenstate extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardtextStyle =
        GoogleFonts.cabin(fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
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
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.mic,
              text: "Voice Ass.",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/top_header.jpeg")),
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 55,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/person_1.jpeg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/P15.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/P16.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/P17.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/P14.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 400),
                        viewportFraction: 0.8,
                      )),
                  Text(
                    "Communities",
                    style: GoogleFonts.cabin(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
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
                                  "assets/P8.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Text(
                                  "Panchayat",
                                  style: cardtextStyle,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "Comm1");
                                },
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
                                  "assets/P12.jpeg",
                                ),
                                width: 200,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Text(
                                  "Agriculture",
                                  style: cardtextStyle,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "Comm");
                                },
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
                                  "assets/P13.jpeg",
                                ),
                                width: 180,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Text(
                                  "Marketplace",
                                  style: cardtextStyle,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "market");
                                },
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
                                  "assets/P7.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Education",
                                style: cardtextStyle,
                              )
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
                                  "assets/P6.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Electricity",
                                style: cardtextStyle,
                              )
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
                                  "assets/P2.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Water",
                                style: cardtextStyle,
                              )
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
                                  "assets/P5.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Health Care",
                                style: cardtextStyle,
                              )
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
                                  "assets/P4.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Text(
                              //   "Women Safety",
                              //   style: cardtextStyle,
                              // )
                              InkWell(
                                child: Text(
                                  "Women Safety",
                                  style: cardtextStyle,
                                ),
                                onTap: () {},
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
                                  "assets/P1.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Govt. Work",
                                style: cardtextStyle,
                              )
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
                                  "assets/P3.jpeg",
                                ),
                                width: 150,
                                height: 110,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Transport",
                                style: cardtextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
