import 'package:flutter/material.dart';
import 'Getstatedscreen/getstartedscreen.dart';
import 'Signup.dart';
import 'detailsscreen/details.dart';
import 'dashboard.dart';
import 'Registrationscreen1.dart';
import 'secondregistrationscreen.dart';
import 'Meditationscreen.dart';
import 'package:laalm/Getstatedscreen/getstartedscreen.dart';
import 'Dashboardsecondscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'chatbot.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Startscreen(),
      routes: {
        '/getstartscreen':(BuildContext context)=>Startscreen(),
        '/Signup':(BuildContext context)=>signin(),
        '/details':(BuildContext context)=>details(),
        '/dashboard':(BuildContext context)=>dashboard(),
        '/registration':(BuildContext context)=>registrationscreen(),
        '/secondregister':(BuildContext context)=>MyHomePage(),
        '/chatbot':(BuildContext context)=>chitBot(),
        '/meditation':(BuildContext ctx)=>Meditation(),
        '/dashboardsecond':(BuildContext context)=>DashboardScreen(),
      },
    );
  }
}
