import 'package:flutter/material.dart';
import 'meditationoffline.dart';
import 'Meditationonline.dart';

class Meditation extends StatefulWidget {
  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff8FE0F4),
        appBar: AppBar(
          backgroundColor: Color(0xff491A57),
          bottom: TabBar(
            tabs: [
              Container(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Online",
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
              )),
              Container(child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Offline",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ))

            ],
          ),
          title: Text('Meditation'),
        ),
        body: TabBarView(
          children: [
            Online(),
            Offline()
          ],
        ),
      ),
    );
  }
}