import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
String userid;
String dropdownValue;
final name = TextEditingController();
final age = TextEditingController();
final father = TextEditingController();
final mother = TextEditingController();
final mobile = TextEditingController();
final email = TextEditingController();
final address = TextEditingController();
List<String> dropdown = ['male', 'female'];

class details extends StatefulWidget {
  var uid='';
  bool _isInit=true;
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if(widget._isInit){
      widget.uid='${ModalRoute.of(context).settings.arguments as String}';
      userid=widget.uid;
      widget._isInit=false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFfefffd),
        body:SingleChildScrollView(
        child:Column(
          children: [
            Text("Personal details",
            style: TextStyle(
              color: Color(0XFF57d0ef),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                 controller: name,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'Name',
                filled: true,
                fillColor: Color(0xfff4f3f4),
                hintStyle: TextStyle(
                  color: Color(0XFF57d0ef),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),
                 // fillColor: Color(0xfff4f3f4),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                    controller: age,
                  cursorColor: Color(0xff491a57),
                    decoration: InputDecoration(
                      hintText: 'Age',
                      filled: true,
                      fillColor: Color(0xfff4f3f4),
                      hintStyle: TextStyle(
                        color: Color(0XFF57d0ef),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Gender',
                      style: TextStyle(color: Color(0XFF57d0ef),
                      fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    value: dropdownValue,
                    //underline: Color(0xff57d0ef),
                    icon: Icon(Icons.expand_more),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Color(0XFF57d0ef)),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['male','female']
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
                controller: father,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'Father',
                  filled: true,
                  fillColor: Color(0xfff4f3f4),
                  hintStyle: TextStyle(
                    color: Color(0XFF57d0ef),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: mother,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'Mother',
                  filled: true,
                  fillColor: Color(0xfff4f3f4),
                  hintStyle: TextStyle(
                    color: Color(0XFF57d0ef),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),

                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Text("Contact details",
              style: TextStyle(
                color: Color(0XFF57d0ef),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: mobile,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'Mobile',
                  filled: true,
                  fillColor: Color(0xfff4f3f4),
                  hintStyle: TextStyle(
                    color: Color(0XFF57d0ef),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: email,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'email',
                  filled: true,
                  fillColor: Color(0xfff4f3f4),
                  hintStyle: TextStyle(
                    color: Color(0XFF57d0ef),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),

                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: address,
                cursorColor: Color(0xff491a57),
                decoration: InputDecoration(hintText: 'Address',
                  filled: true,
                  fillColor: Color(0xfff4f3f4),
                  hintStyle: TextStyle(
                    color: Color(0XFF57d0ef),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Color(0x908fe0f4), ),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0X908fe0f4),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: RaisedButton(
                color: Color(0XFF8FE0F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 6,
                onPressed: (){
                  // if(name.text==''||age.text==''||father.text==''||mother.text==''||mobile.text==''||email.text==''||address.text==''||dropdownValue==null) {
                  //   Fluttertoast.showToast(msg: 'Please provide all the details');
                  // }
                  // else{
                    CollectionReference ref = Firestore.instance.collection(
                        'Users');
                    DocumentReference documentReference = ref.document(userid);
                    documentReference.setData({
                      'name': name.text.toString(),
                      'age':age.text.toString(),
                      'gender':dropdownValue.toString(),
                      'father':father.text.toString(),
                      'mother':mother.text.toString(),
                      'mobile':mobile.text.toString(),
                      'email':email.text.toString(),
                      'address':address.text.toString(),
                    }
                    );
                    Navigator.pushNamed(context, '/dashboard');
                  },
                //},
              child:Text('Next',
              style: TextStyle(
                color: Color(0XFF491A57),
              ),
              ),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}