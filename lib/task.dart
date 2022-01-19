import 'package:flutter/material.dart';

void main() {
  runApp(MyAppTask());
}

class MyAppTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFlutter Club'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  'Flutter App',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      /*wordSpacing: 30,
                      letterSpacing: 20,
                      backgroundColor: Colors.amberAccent,*/
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2, 1),
                            blurRadius: 20)
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: MyDropDown(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String dropdownvalue = "Select Item";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      elevation:  15,
      style: TextStyle(color:  Colors.black),
      underline: Container(
        height:  2,
        color:  Colors.deepOrange,
      ),
      onChanged: (String? newvalue){
        setState(() {
          dropdownvalue = newvalue!;
        });
      },
      items: <String>["Select Item","Android","Java",".net"].map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem<String>(
            value: value,
            child:Text(value)
        );
      }).toList(),
    );
  }
}




/*
          child: Text('Flutter App', style: TextStyle(fontSize: 30,
              color: Colors.deepOrange,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,wordSpacing: 30,letterSpacing: 20,
              backgroundColor: Colors.amberAccent,shadows: [
                Shadow(color: Colors.black, offset: Offset(2,1),blurRadius: 20)
              ]),),
*/
