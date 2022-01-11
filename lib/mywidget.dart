import 'package:flutter/material.dart';

void main()=> runApp(MyWidget());

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.green

      ),
      home: Scaffold(

        appBar: AppBar(
          title: Text('My Widget'),
        ),

        body: Row(

          children:[

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(5),
                color:  Colors.green
              ),
              child: Text("Flutter",
                style: TextStyle(color: Color.fromRGBO(255, 255, 80, 100),fontSize: 40),),
            )
          ],
        ),

      ),


    );
  }
}
