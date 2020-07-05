import 'package:flutter/material.dart';
import './homepage.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countryList = "Country List";
    return MaterialApp(
     title: countryList,
     theme: ThemeData(
       primaryColor: Color(0xFF02BB9F),
       accentColor: Color(0xfffad32)
     ),
     home: HomePage(),
    );
  }
}


