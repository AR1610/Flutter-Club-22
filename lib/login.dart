import 'package:flutter/material.dart';

void main()=>runApp(LoginClass());

class LoginClass extends StatelessWidget {
  String title = "Login Page";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: LoginDetail(),

    ),
    );
  }
}
class LoginDetail extends StatefulWidget {
  const LoginDetail({Key? key}) : super(key: key);

  @override
  _LoginDetailState createState() => _LoginDetailState();
}

class _LoginDetailState extends State<LoginDetail> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      return Padding(padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text("MyApp Royal",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w600,fontSize: 40)),
          ),

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text("Sign in",style: TextStyle(color: Colors.black,fontSize: 20)),
          ),
          Container(
            padding:  EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              controller:  emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Id',
                fillColor: Colors.black
              ),
            ),
          ),
          Container(
            padding:  EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: TextField(
              controller:  passwordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
                labelStyle: TextStyle(
                  color: Colors.black
                ),
                labelText: 'Password',

              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child:TextButton(
                  onPressed: (){

                  }, child: Text("Forgot Password?"))
          ),
          Container(
            height: 100,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: RaisedButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
              },
              child: Text('Sign In',style: TextStyle(color: Colors.white),),
              color: Colors.deepOrange,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          )
        ],
      ),);
  }
}


