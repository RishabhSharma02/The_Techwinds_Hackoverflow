import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'CHATBOX',
    'MARKETPLACE',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Color.fromARGB(255, 6, 81, 244),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text(
                categories[index],
                style: GoogleFonts.cabin(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
