import 'dart:ui';
import 'package:the_techwinds/widget/category_selector.dart';
import 'package:the_techwinds/widget/category_selector1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class MyComm1 extends StatefulWidget {
  const MyComm1({Key? key}) : super(key: key);

  @override
  State<MyComm1> createState() => _MyCommstate1();
}

class _MyCommstate1 extends State<MyComm1> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello,there will be a meet at 6pm today",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "All are requested to attend", messageType: "receiver"),
    ChatMessage(messageContent: "OK", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 81, 244),
        title: Text("Panchayat"),
        titleTextStyle: GoogleFonts.cabin(
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector1(),
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: GoogleFonts.cabin(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 350,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write here...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
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
