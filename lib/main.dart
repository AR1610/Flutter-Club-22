import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.deepOrange
      ),


      home: Scaffold(
        appBar: AppBar(
          title:  Text('MyFlutter Club'),
        ),
        body: Center(
          child: Text('Flutter App', style: TextStyle(fontSize: 30,
              color: Colors.deepOrange,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,wordSpacing: 30,letterSpacing: 20,
          backgroundColor: Colors.amberAccent,shadows: [
            Shadow(color: Colors.black, offset: Offset(2,1),blurRadius: 20)
              ]),),
        ),
      ),

       );
     }
}