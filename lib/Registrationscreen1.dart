import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _groupValue = -1;
int secondvalue=-1;
int respiratoryvalue=-1;
int bloodsugarvalue=-1;
int height=1;
int commitmentvalue=-1;
String value;
class registrationscreen extends StatefulWidget {
  @override
  _registrationscreenState createState() => _registrationscreenState();
}

class _registrationscreenState extends State<registrationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFFFD),
      appBar: AppBar(
        backgroundColor: Color(0xff491A57),
        title: Text(
          'Health Info',
          style: TextStyle(
            color: Color(0xffFEFFFD),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Blood Pressure',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    'images/bloodpressure.jpeg', height: 100, width: 60,),
                ),
              ],
            ),
            new Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: myRadioButton(
                      title: 'High',
                      subtitle: '(90/140)',
                      value: 0,
                      onChanged: (newValue) {
                        setState(() {
                          _groupValue = newValue;
                        });
                      }),
                ),
                Expanded(
                  child: myRadioButton(
                      title: 'Normal',
                      subtitle: '(90-120)',
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                          _groupValue = newValue;
                        });
                      }),
                ),
              ],
            ),
            myRadioButton(
                title: 'Low',
                subtitle: '(60-80)',
                value: 2,
                onChanged: (newValue) {
                  setState(() {
                    _groupValue = newValue;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                color: Color(0xff491A57),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Heart Rate',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    'images/heartrate.jpeg', height: 100, width: 60,),
                ),
              ],
            ),
            new Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Radiobutton(
                      title: 'Normal',
                      subtitle: '(100-60)bpm',
                      value: 0,
                      onChanged: (newValue) {
                        setState(() {
                          secondvalue = newValue;
                        });
                      }),
                ),
                Expanded(
                  child: Radiobutton(
                      title: 'Low',
                      subtitle: '(90-120)',
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                          secondvalue = newValue;
                        });
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                color: Color(0xff491A57),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Respiratory Rate',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    'images/respiratoryrate.jpeg', height: 100, width: 60,),
                ),
              ],
            ),
            new Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: RespiratoryRadiobutton(
                      title: 'Normal',
                      subtitle: '(12-16)bpm',
                      value: 0,
                      onChanged: (newValue) {
                        setState(() {
                          respiratoryvalue = newValue;
                        });
                      }),
                ),
                Expanded(
                  child: RespiratoryRadiobutton(
                      title: 'Low',
                      subtitle: '(90-120)',
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                          respiratoryvalue = newValue;
                        });
                      }),
                ),
              ],
            ),
            RespiratoryRadiobutton(
                title: 'High',
                subtitle: '(60-80)',
                value: 2,
                onChanged: (newValue) {
                  setState(() {
                    respiratoryvalue = newValue;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                color: Color(0xff491A57),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Blood Sugar Level',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    'images/bloodsugar.jpeg', height: 100, width: 60,),
                ),
              ],
            ),
            new Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Bloodsugarlevelbutton(
                      title: 'Normal',
                      value: 0,
                      onChanged: (newValue) {
                        setState(() {
                          bloodsugarvalue = newValue;
                        });
                      }),
                ),
                Expanded(
                  child: Bloodsugarlevelbutton(
                      title: 'Diabetic',
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                          bloodsugarvalue = newValue;
                        });
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                color: Color(0xff491A57),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Text(
                'Current status of Health',
                style: TextStyle(
                  color:Color(0xff491A57),
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                  Text(
                    height.toString(),
                    style: TextStyle(
                      color:Color(0xff491A57),
                      fontSize: 20,
                    ),
                  ),
                Text(
                  func(),
                ),

              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFF8D8E98),
                activeTrackColor: Color(0xff491A57),
                thumbColor: Color(0xff491A57),
                overlayColor: Color(0x150EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
              ),
              child: Slider(
                value: height.toDouble(),
                min: 1,
                max: 5,
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                color: Color(0xff491A57),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top:10),
                  child: Text('Commitment level',
                    style: TextStyle(
                      color: Color(0xff491A57),
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Image.asset(
                    'images/commitmentlevel.jpeg', height: 100, width: 60,),
                ),
              ],
            ),
            new Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Commitmentlevelbutton(
                      title: '1 month',
                      value: 0,
                      onChanged: (newValue) {
                        setState(() {
                          commitmentvalue = newValue;
                        });
                      }),
                ),
                Expanded(
                  child: Commitmentlevelbutton(
                      title: '3 months',
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                            commitmentvalue = newValue;
                        });
                      }),
                ),
              ],
            ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Commitmentlevelbutton(
                          title: '6 months',
                          value: 2,
                          onChanged: (newValue) {
                            setState(() {
                              commitmentvalue = newValue;
                            });
                          }),
                    ),
                    Expanded(
                      child: Commitmentlevelbutton(
                          title: '1 year',
                          value: 3,
                          onChanged: (newValue) {
                            setState(() {
                              commitmentvalue = newValue;
                            });
                          }),
                    ),
                  ],
                ),

            FlatButton(
                color: Color(0xff491A57),
                onPressed: (){
              Navigator.pushNamed(context,'/secondregister');
            }, child:Text(
              'Next',
              style: TextStyle(
                color: Color(0xffFEFFFD),
                fontSize: 20,
              ),
            ))

          ],
        ),
        // ],
      ),
      //],
    );
  }

  Widget myRadioButton(
      {String title, String subtitle, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle,
        style: TextStyle(
          fontSize: 15,
        ),
      ),

    );
  }

  Widget Radiobutton(
      {String title, String subtitle, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: secondvalue,
      onChanged: onChanged,
      title: Text(title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle,
        style: TextStyle(
          fontSize: 15,
        ),
      ),

    );
  }

  Widget RespiratoryRadiobutton(
      {String title, String subtitle, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: respiratoryvalue,
      onChanged: onChanged,
      title: Text(title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  Widget Bloodsugarlevelbutton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: bloodsugarvalue,
      onChanged: onChanged,
      title: Text(title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
  String func(){
  if(height==1){
    return 'Poor';
  }
  else if(height==2){
    return 'Average';
    }
  else if(height==3){
    return 'Good';
    }
  else if(height==4){
    return 'Very Good';
    }
  else{
    return 'Excellent';
    }
  }
  Widget Commitmentlevelbutton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: commitmentvalue,
      onChanged: onChanged,
      title: Text(title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
