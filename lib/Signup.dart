// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// bool _selected=false;
// var uid;
// final FirebaseAuth auth=FirebaseAuth.instance;
// final GoogleSignIn googleSignIn=GoogleSignIn();
// Future<String> signInWithGoogle() async {
//   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//   final GoogleSignInAuthentication googleSignInAuthentication =
//   await googleSignInAccount.authentication;
//   AuthCredential credential = GoogleAuthProvider.getCredential(
//     accessToken: googleSignInAuthentication.accessToken,
//     idToken: googleSignInAuthentication.idToken,
//   );
//   final AuthResult authResult=await auth.signInWithCredential(credential);
//   final FirebaseUser user=authResult.user;
//   uid=user.uid;
//
// }
// class signin extends StatefulWidget {
//   @override
//   _signinState createState() => _signinState();
// }
//
// class _signinState extends State<signin> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0XFF8FE0F4),
//         body:
//         SingleChildScrollView(
//           child: Column(
//             children: [
//               Hero(
//                 tag:'laalm',
//                 child: Image.asset('images/laalmlogo.jpeg',
//                   height: 200,
//                   width: 100,
//                 ),
//               ),
//
//               Center(
//                 child: Text('SignIn',
//                   style: TextStyle(color: Color(0xFF491A57),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
//                 child: RaisedButton(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     color: Color(0xFFFEFFFD),
//                     child:Row(
//                       children: [
//                         Image.asset('images/googleicon.jpeg',
//                           height: 20,
//                           width: 20,
//                         ),
//                         SizedBox(width: 30),
//                         Text('Sign in with Google',
//                           style:TextStyle(
//                             color:Color(0xFF491A57),
//                           ),
//                         ),
//                       ],
//                     ),
//                     onPressed:(){
//                       signInWithGoogle().whenComplete(() {
//                         Navigator.pushNamed(context,'/details',arguments: '${uid}');
//                       });
//                     }),
//               ),
//               GestureDetector(
//                 onTap: (){
//                   setState(() {
//                     _selected=!_selected;
//                   });
//                 },
//                 child: AnimatedContainer(
//                   color: Colors.green,
//                   width:_selected?200.0:100.0,
//                   height:_selected?100.0:50.0,
//                   duration: Duration(seconds:0),
//                   curve: Curves.bounceOut,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'animation.dart';
bool _selected=false;
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0xffa8d2e0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  FadeAnimation(1, Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/animatedlogin.png'),
                            fit: BoxFit.fill
                        )
                    ),
                    // child: Stack(
                    //   children: <Widget>[
                    //     Positioned(
                    //       right: 40,
                    //       top: 40,
                    //       width: 80,
                    //       height: 150,
                    //       child: FadeAnimation(2, Container(
                    //         decoration: BoxDecoration(
                    //             // image: DecorationImage(
                    //             //
                    //             //     // image: AssetImage('images/achievementlogo.png',
                    //             //     // ),
                    //             // )
                    //         ),
                    //       )),
                    //     ),
                    //   ],
                    // ),
                  ),),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _selected=!_selected;
                        });
                        Navigator.pushNamed(context, '/registration');
                      },
                      child:FadeAnimation(1.8, Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: AnimatedContainer(
                          child: Row(
                            children: [
                              Image.asset('images/googleicon.jpeg',
                              height: 20,
                                width: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Google SignUp',
                                  style: TextStyle(
                                    color: Color(0xff491A57),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          width: _selected?200:200,
                          height: _selected?50:40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          duration:Duration(seconds: 0),
                        ),
                      ),
                    ),
                    ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
