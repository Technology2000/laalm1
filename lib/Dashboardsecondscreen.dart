import 'package:flutter/material.dart';
class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff8FE0F4),
      backgroundColor: Color(0xfff4f3f4),
      appBar: AppBar(
        title: Text("Dashboard"),
        elevation: 5.0,
        backgroundColor: Color(0xfff491a57),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Mediation Stats", Image.asset('images/meditation.jpeg',
            height: 50,width: 50,),'/dashboard'),
            makeDashboardItem("Achievement Stats",Image.asset('images/achievement.jpeg',height: 50,width: 50,), '/dashboard'),
            makeDashboardItem("Health Parameters", Image.asset('images/health.jpeg',height: 50,width: 50,),'/dashboard'),
            makeDashboardItem("Emergency Stats", Image.asset('images/emergency.jpeg',height: 50,width: 50,),'/dashboard'),
            makeDashboardItem("Task Schedule ", Image.asset('images/task.jpeg',height: 50,width: 50,),'/dashboard'),
            makeDashboardItem("Feedback", Image.asset('images/feedback.jpeg',height: 50,width: 50,),'/dashboard'),
            makeDashboardItem("Contact Us",Image.asset('images/contact.jpeg',height: 50,width: 50,),'/dashboard')
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, Image icon,String variable) {
    return Card(
        elevation: 6.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xffffefffd),
          ),
          child: new InkWell(
            onTap: () {
              Navigator.pushNamed(context,variable);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child:icon,
                    ),
                SizedBox(height: 20.0),
                Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(title,
                        style: TextStyle(fontSize: 15.0,
                          fontFamily: 'fonts/Lato.ttf',
                          fontWeight:FontWeight.w400,
                          color:  Color(0xfff491a57),)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}