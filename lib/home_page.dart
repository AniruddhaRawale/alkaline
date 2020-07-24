import 'package:flutter/material.dart';
import 'chat_screen.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Alkaline",
        style: TextStyle(
          fontFamily: 'most loved',
          fontSize: 30.00,
          wordSpacing: 15.0
        ),
        ),
      ),
      body: ChatScreen(),

    );
  }
}
