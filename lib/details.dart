import 'package:flutter/material.dart';

String dropdownValue;
final text = TextEditingController();
final age = TextEditingController();
final gender = TextEditingController();
final father = TextEditingController();
final mother = TextEditingController();
final mobile = TextEditingController();
final email = TextEditingController();
final address = TextEditingController();
List<String> dropdown = ['male', 'female'];

class details extends StatefulWidget {
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF8FE0F4),
        body:SingleChildScrollView(
        child:Column(
          children: [
            Text("Personal details",
            style: TextStyle(
              color: Color(0XFF491A57),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: text,
                decoration: InputDecoration(hintText: 'Name',
                hintStyle: TextStyle(
                  color: Color(0XFF491A57),
                ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  controller: age,
                  decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: TextStyle(
                      color: Color(0XFF491A57),
                    ),
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButton<String>(
                hint: Text('Gender'),
                value: dropdownValue,
                icon: Icon(Icons.expand_more),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Color(0XFF491A57)),
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
                decoration: InputDecoration(hintText: 'Father',
                  hintStyle: TextStyle(
                    color: Color(0XFF491A57),
                  ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: mother,
                decoration: InputDecoration(hintText: 'Mother',
                  hintStyle: TextStyle(
                    color: Color(0XFF491A57),
                  ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Text("Contact details",
              style: TextStyle(
                color: Color(0XFF491A57),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: mobile,
                decoration: InputDecoration(hintText: 'Mobile',
                  hintStyle: TextStyle(
                    color: Color(0XFF491A57),
                  ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(hintText: 'email',
                  hintStyle: TextStyle(
                    color: Color(0XFF491A57),
                  ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: address,
                decoration: InputDecoration(hintText: 'Address',
                  hintStyle: TextStyle(
                    color: Color(0XFF491A57),
                  ),
                  fillColor: Colors.white,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0XFF491A57),width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            RaisedButton(
              color: Color(0XFFFEFFFD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 6,
              onPressed: (){
                Navigator.pushNamed(context, '/dashboard');
              },
            child:Text('Next',
            style: TextStyle(
              color: Color(0XFF491A57),
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
