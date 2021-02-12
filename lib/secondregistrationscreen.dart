import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final elements1 = [
    "Aware of meditation",
    "Irregular Practitioner",
    "Regular Practitioner",
  ];
  final elements2 = [
    "Aware Of Yoga",
    "Irregular Practitioner",
    "Regular Practitioner",
  ];

  final elements3 = [
    "Vegetarian",
    "Eggterian",
    "Vegan",
    "NonVegetarian",
  ];

  final elements4 = [
    "Low",
    "Middle",
    "UpperMiddle",
    "High",
  ];
  final elements5 = [
    "Rural",
    "Urban"
  ];
  final elements6 = [
    "Active",
    "Sedentary",
  ];
  final elements7 = [
    "Nuclear",
    "Joint",
  ];

  int selectedIndex1 = 0,
      selectedIndex2 = 0,
      selectedIndex3 = 0,
      selectedIndex4 = 0,
      selectedIndex5=0,
  selectedIndex6=0,
  selectedIndex7=0;
  List<Widget> _buildItems1() {
    return elements1
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }

  List<Widget> _buildItems2() {
    return elements2
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }

  List<Widget> _buildItems3() {
    return elements3
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }

  List<Widget> _buildItems4() {
    return elements4
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }
  List<Widget> _buildItems5() {
    return elements5
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }
  List<Widget> _buildItems6() {
    return elements6
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }
  List<Widget> _buildItems7() {
    return elements7
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Info'),
        backgroundColor:Color(0xff491A57) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "History Of Meditation",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),

                           Image.asset('images/meditationhistory.png',
                          height:80,
                            width: 120,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: DirectSelect(
                        itemExtent: 43.0,
                        selectedIndex: selectedIndex1,
                        backgroundColor: Colors.white,
                        child: MySelectionItem(
                          isForList: false,
                          title: elements1[selectedIndex1],
                        ),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedIndex1 = index;
                          });
                        },
                        items: _buildItems1()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "History Of Yoga",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                            fontSize: 20,

                          ),
                        ),
                           Image.asset('images/yogahistory.png',
                            height:80,
                            width: 120,

                        ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex2,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements2[selectedIndex2],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex2 = index;
                        });
                      },
                      items: _buildItems2()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Food Preferences",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),
                           Image.asset('images/food.png',
                            height:80,
                            width: 120,
                        ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex3,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements3[selectedIndex3],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex3 = index;
                        });
                      },
                      items: _buildItems3()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Income Level",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),

                           Image.asset('images/incomelevel.png',
                            height:80,
                            width: 120,
                          ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex4,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements4[selectedIndex4],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex4 = index;
                        });
                      },
                      items: _buildItems4()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Demography",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),
                        Image.asset('images/demography.png',
                          height:80,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex5,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements5[selectedIndex5],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex5 = index;
                        });
                      },
                      items: _buildItems5()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lifestyle",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),
                        Image.asset('images/lifestyle.png',
                          height:80,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex6,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements6[selectedIndex6],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex6 = index;
                        });
                      },
                      items: _buildItems6()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Family",
                          style: TextStyle(
                              color: Color(0xff491A57), fontWeight: FontWeight.w500,
                          fontSize: 20,
                          ),
                        ),
                        Image.asset('images/family.png',
                          height:80,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  DirectSelect(
                      itemExtent: 43.0,
                      selectedIndex: selectedIndex7,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements6[selectedIndex7],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedIndex7 = index;
                        });
                      },
                      items: _buildItems7()),
                  FlatButton(
                      color: Color(0xff491A57),
                      onPressed: (){
                        Fluttertoast.showToast(msg: 'Applied Successfully');
                        Navigator.pushNamed(context,'/dashboard');
                      }, child:Text(
                    'Apply',
                    style: TextStyle(
                      color: Color(0xffFEFFFD),
                      fontSize: 20,
                    ),
                  ))
                ]),
          ),
        ),
      ),
    );
  }

}
class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key key, this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
        child: _buildItem(context),
        padding: EdgeInsets.all(10.0),
      )
          : Card(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: <Widget>[
            _buildItem(context),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        ),
      ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}