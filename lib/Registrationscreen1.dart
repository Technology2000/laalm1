import 'package:flutter/material.dart';

String currentailiments;
class registrationscreen extends StatefulWidget {
  @override
  _registrationscreenState createState() => _registrationscreenState();
}

class _registrationscreenState extends State<registrationscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFfefffd),
        appBar: AppBar(
          backgroundColor: Color(0xff491A57),
          title: Text('Registration',
          style: TextStyle(
            color: Color(0xffFEFFFD),
          ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Text('Health Parameters',
                  style: TextStyle(
                    color: Color(0XFF8FE0F4),
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: Color(0xff491a57),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'BloodPressure',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),

                ),

              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: Color(0xff491a57),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'HeartRate',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: Color(0xff491a57),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'Height',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'weight',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  cursorColor: Color(0xff491a57),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'Sugarlevels',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Text('Current Ailments',
                    style: TextStyle(
                      color: Color(0XFF8FE0F4),
                      fontSize:20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton<String>(
                  hint: Text('Select'),
                  value: currentailiments,
                  icon: Icon(Icons.expand_more),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (String newValue) {
                    setState(() {
                      currentailiments = newValue;
                    });
                  },
                  items: <String>['Poor','Average','Good','Excellent']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: TextFormField(
                     cursorColor: Color(0xff491a57),
                     keyboardType: TextInputType.multiline,
                     maxLines: 2,
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xfff4f3f4),
                       hintText: 'Short term objectives',
                       enabledBorder: OutlineInputBorder(
                         borderRadius: new BorderRadius.circular(25.0),
                         borderSide:  BorderSide(color: Color(0xff491a57), ),
                       ),
                       // fillColor: Color(0xfff4f3f4),
                       focusedBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                         borderRadius: BorderRadius.circular(25.0),
                       ),
                     ),
                   ),
                 ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: Color(0xff491a57),
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff4f3f4),
                    hintText: 'Long term objectives',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Color(0xff491a57), ),
                    ),
                    // fillColor: Color(0xfff4f3f4),
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0xff491a57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),

                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                   child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color:Color(0xff491A57),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onPressed:(){
                        Navigator.pushNamed(context, '/secondregister');
                      }),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
