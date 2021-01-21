import 'package:flutter/material.dart';
import 'package:laalm/getstartscreen.dart';
import 'Signup.dart';
import 'details.dart';
import 'dashboard.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Startscreen(),
      routes: {
    '/getstartscreen':(BuildContext context)=>Startscreen(),
        '/Signup':(BuildContext context)=>Signup(),
        '/details':(BuildContext context)=>details(),
        '/dashboard':(BuildContext context)=>dashboard(),
      },
    );
  }
}