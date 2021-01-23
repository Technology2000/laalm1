import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
String commitment;
String demography;
String lifestyle;
class secondregistration extends StatefulWidget {
  @override
  _secondregistrationState createState() => _secondregistrationState();
}

class _secondregistrationState extends State<secondregistration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0XFFfefffd),
          appBar: AppBar(
            backgroundColor: Color(0xff491A57),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    hint: Text('commitmentlevel',
                    style: TextStyle(
                      color: Color(0xff491A57),
                    ),
                    ),
                    value: commitment,
                    icon: Icon(Icons.expand_more),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String newValue) {
                      setState(() {
                        commitment = newValue;
                      });
                    },
                    items: <String>['1 month','6 months','1 year']
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
                    keyboardType:TextInputType.multiline,
                      maxLines: 2,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff4f3f4),
                        hintText: 'History of medication',
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
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'History of Yoga',
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
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff4f3f4),
                      hintText: 'Food Preference',
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
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff4f3f4),
                      hintText: 'Income level',
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
                DropdownButton<String>(
                  hint: Text('Demography',
                    style: TextStyle(
                      color: Color(0xff491A57),
                    ),
                  ),
                    value: demography,
                    icon: Icon(Icons.expand_more),
                    onChanged:(String value){
                    setState(() {
                      demography=value;
                    });
                    },
                    items:<String>['Urban','Rural'].map<DropdownMenuItem<String>>((String value){
                       return DropdownMenuItem<String>(
                         value:value,
                         child: Text(value),
                       );
                      }).toList(),

                ),
                DropdownButton<String>(
                  hint: Text('LifeStyle',
                    style: TextStyle(
                      color: Color(0xff491A57),
                    ),
                  ),
                  value: lifestyle,
                  icon: Icon(Icons.expand_more),
                  onChanged:(String value){
                    setState(() {
                      lifestyle=value;
                    });
                  },
                  items:<String>['Active','Silent'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value:value,
                      child: Text(value),
                    );
                  }).toList(),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType:TextInputType.multiline,
                    maxLines: 2,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff4f3f4),
                      hintText: 'Family size',
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
                     padding: const EdgeInsets.only(bottom: 20),
                     child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                           color: Color(0xff491A57),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        onPressed:(){
                          //Navigator.pushNamed(context, '/secondregister');
                          Fluttertoast.showToast(msg: 'You are registerd successfully');
                        }),
                   ),
              ],
            ),
          ),
    ),
    );
  }
}
