import 'package:flutter/material.dart';
import 'chatbot.dart';
import 'Meditationscreen.dart';
import 'reports.dart';
import 'Dashboardsecondscreen.dart';
int currentindex=0;
List<Widget> screens=[
  Meditation(),
  chitBot(),
  DashboardScreen(),
  reports(),

];
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
        body:screens[currentindex],
       bottomNavigationBar:BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentindex,
          onTap:onTap,
          backgroundColor: Color(0xff491A57),
          items: [
            BottomNavigationBarItem(
                icon:
                Icon(Icons.self_improvement,
                //size: 5,
                color: Color(0xfffefffd),
                ),
               label: 'Meditation',

            ),
            BottomNavigationBarItem(icon:
                Icon(Icons.emoji_events,
                  //size: 5,
                  color: Colors.white,
                ),
                label:'Achievements',

            ),
            BottomNavigationBarItem(icon:
                Icon(Icons.home,
                  //size: 5,
                  color: Colors.white,
                ),
                label:'Dashboard',
            ),
            BottomNavigationBarItem(icon:
            Icon(Icons.library_books,
              //size: 5,
              color: Colors.white,
            ),
              label:'Reports',
            ),
          ],
        ),
    );
  }
  onTap(index){
    setState(() {
      currentindex=index;
    });
  }
  }

