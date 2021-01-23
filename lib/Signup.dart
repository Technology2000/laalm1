import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var uid;
final FirebaseAuth auth=FirebaseAuth.instance;
final GoogleSignIn googleSignIn=GoogleSignIn();
Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
  await googleSignInAccount.authentication;
  AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  final AuthResult authResult=await auth.signInWithCredential(credential);
  final FirebaseUser user=authResult.user;
  uid=user.uid;

}
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
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
                      signInWithGoogle().whenComplete(() {
                        Navigator.pushNamed(context,'/details',arguments: '${uid}');
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
