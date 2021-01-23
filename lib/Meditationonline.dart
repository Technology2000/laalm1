import 'package:flutter/material.dart';

class Online extends StatefulWidget {
  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8FE0F4),
      body: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: GestureDetector( 
                child: Container(
                  child: Center(
                    child: Text('With Device',
                      style: TextStyle(
                        color: Color(0xff491A57),
                        fontSize: 23,
                      ),
                    ),
                  ),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEFFFD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
              child: GestureDetector( 
                child: Container(
                  child: Center(
                    child: Text('Without Device',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 23,
                    ),
                    ),
                  ),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEFFFD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
