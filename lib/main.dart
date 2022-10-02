import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'comm.dart';
import 'comm1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'Home': (context) => Homescreen(),
      'Comm': (context) => MyComm(),
      'Comm1': (context) => MyComm1(),
    },
  ));
}
