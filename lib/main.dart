import 'package:flutter/material.dart';
import 'home_page.dart';
import 'chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      home: HomePage(),
    );

  }
}


