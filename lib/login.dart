import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:language_picker/language_picker.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/vivid-blurred-colorful-wallpaper-background.jpg',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 135),
              child: DefaultTextStyle(
                style: GoogleFonts.cabin(
                    fontSize: 50,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 20.0,
                        color: Color.fromARGB(255, 69, 68, 68),
                      ),
                    ]),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Welcome to\nGravik',
                      speed: const Duration(milliseconds: 50),
                    ),
                    TypewriterAnimatedText(
                      'ग्राविक में आपका\nस्वागत है ।',
                      speed: const Duration(milliseconds: 50),
                    ),
                    TypewriterAnimatedText(
                      'கிராவிக்கிற்கு\nவரவேற்கிறோம்',
                      textStyle: GoogleFonts.nunito(fontSize: 41),
                      speed: const Duration(milliseconds: 50),
                    ),
                  ],
                  totalRepeatCount: 1000,
                  pause: const Duration(milliseconds: 2000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: false,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      left: 35,
                      right: 35),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Select language",
                              hoverColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                      const SizedBox(
                        height: 30,
                      ),
                      InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        cursorColor: Colors.black,
                        inputDecoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintStyle: GoogleFonts.cabin(fontSize: 16),
                            hintText: "Phone No.",
                            hoverColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 0, 38, 255),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'Home');
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Register Now",
                                style: GoogleFonts.cabin(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 31, 45, 244))),
                          ),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
