import 'package:flutter/material.dart';
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
        backgroundColor: Color(0xfff8FE0F4),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(onPressed:(){},
                padding: const EdgeInsets.fromLTRB(68.0,13.0,68.0,13.0),
                elevation: 8.0,
                color: Color(0xFFFEFFFD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Achievement',
                  style:TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Lato.ttf',
                    fontWeight:FontWeight.w400,
                    color: Color(0xfff491a57),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: RaisedButton(
                onPressed:(){
                  Navigator.pushNamed(context, '/dashboardsecond');
                },
                padding: const EdgeInsets.fromLTRB(80.0,13.0,80.0,13.0),
                elevation: 8.0,
                color: Color(0xFFFEFFFD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Dashboard',
                  style:TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Lato.ttf',
                    fontWeight:FontWeight.w400,
                    color: Color(0xfff491a57),
                  ),
                ),
              ),
            ),
            SizedBox(
              height:20,
            ),
            Center(
              child: RaisedButton(onPressed:(){
                Navigator.pushNamed(context, '/registration');
              },
                padding: const EdgeInsets.fromLTRB(78.0,13.0,78.0,13.0),
                elevation: 8.0,
                color: Color(0xFFFEFFFD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Registration',
                  style:TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Lato.ttf',
                    fontWeight:FontWeight.w400,
                    color: Color(0xfff491a57),
                  ),
                ),
              ),
            ),

            SizedBox(
              height:20,
            ),
            Center(
              child: RaisedButton(onPressed:(){
                Navigator.pushNamed(context, '/meditation');
              },
                padding: const EdgeInsets.fromLTRB(85.0,13.0,85.0,13.0),
                elevation: 8.0,
                color: Color(0xFFFEFFFD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Meditation',
                  style:TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Lato.ttf',
                    fontWeight:FontWeight.w400,
                    color: Color(0xfff491a57),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: RaisedButton(onPressed:(){},
                padding: const EdgeInsets.fromLTRB(98.0,13.0,98.0,13.0),
                elevation: 8.0,
                color: Color(0xFFFEFFFD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Reports',
                  style:TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Lato.ttf',
                    fontWeight:FontWeight.w400,
                    color: Color(0xfff491a57),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
  }

