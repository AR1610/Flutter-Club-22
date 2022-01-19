import 'package:flutter/material.dart';

void main()=> runApp(MyMainButton());

class MyMainButton extends StatelessWidget {
  const MyMainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Clutter Club'),),
        body: Center(
          child: MyDropDown(),
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


