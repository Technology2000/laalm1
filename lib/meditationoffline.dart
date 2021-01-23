import 'package:flutter/material.dart';

class Offline extends StatefulWidget {
  @override
  _OfflineState createState() => _OfflineState();
}

class _OfflineState extends State<Offline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8FE0F4),
      body: Column(
        children: [
          Center(
            child: Text(
                "Offline"
            ),
          )
        ],
      ),
    );
  }
}