import 'package:flutter/material.dart';
import 'package:uber_clone/Screens/loginScreen.dart';
import 'package:uber_clone/Screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chalo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: loginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


