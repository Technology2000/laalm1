import 'package:flutter/material.dart';
class Startscreen extends StatefulWidget {
  @override
  _StartscreenState createState() => _StartscreenState();
}
class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8FE0F4),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag:'laalm',
                child: Center(child: Image(image: AssetImage('images/laalmlogo.jpeg',
                ),
                  height: 300,
                  width: 200,
                ),
                ),
              ),
              SizedBox(
                height:50,
              ),
              RaisedButton(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color(0XFFFEFFFD),
                onPressed: (){
                  Navigator.pushNamed(context, '/Signup');
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Get Started',
                  style: TextStyle(
                    color: Color(0XFF491A57),
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
