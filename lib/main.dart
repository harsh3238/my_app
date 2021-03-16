import 'dart:collection';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashScreen',
      theme: ThemeData(
        primaryColor: Colors.blue[200],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new HomePageScreen(),
     title: new Text ('GeeksForGeeks'),
      image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      loadingText: Text('Loading'),
      photoSize: 100.0,
      loaderColor: Colors.greenAccent,
    );
  }
}

class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),centerTitle: true,),
      body: Center (
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center ,
    children: <Widget>[
      Row(
        children: <Widget>[
          SizedBox(width: 20,) ,
          Expanded(child: MaterialButton(
            color: Colors.white,
            splashColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(22.0),
              side: BorderSide(color: Colors.greenAccent),
            ),
            child: Text('Login'),
            onPressed: () {},
          )),
          Expanded(child: MaterialButton(
            color: Colors.white,
            splashColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(22.0),
              side: BorderSide(color: Colors.greenAccent),
            ),
            child: Text('Register'),
            onPressed: () {},
          )),
        ],
      )
    ],
      )
    )
    );
  }
}
