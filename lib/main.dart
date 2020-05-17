import 'package:clonwatsap/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'clon watsap',
      theme: ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25d366)
      ),
      home: HomePage(),
    );
  }
}