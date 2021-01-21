import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF8FE0F4),
        body:
              SingleChildScrollView(
               child: Column(
               children: [
                 Hero(
                   tag:'laalm',
                   child: Image.asset('images/laalmlogo.jpeg',
                   height: 200,
                     width: 100,
                   ),
                 ),

                     Center(
                       child: Text('SignIn',
                       style: TextStyle(color: Color(0xFF491A57),
                         fontWeight: FontWeight.bold,
                       fontSize: 25,
                       ),
                       ),
                     ),

                 Padding(
                   padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),
                     ),
                     color: Color(0xFFFEFFFD),
                           child:Row(
                             children: [
                               Image.asset('images/googleicon.jpeg',
                               height: 20,
                                 width: 20,
                               ),
                               SizedBox(width: 30),
                               Text('Sign in with Google',
                               style:TextStyle(
                                   color:Color(0xFF491A57),
                               ),
                               ),
                             ],
                           ),
                       onPressed:(){
                       Navigator.pushNamed(context, '/details');
                       }),
                 ),
               ],
          ),
             ),
        ),
      );
  }
}
