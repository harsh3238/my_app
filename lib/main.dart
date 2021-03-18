import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/Login.dart';
import 'package:my_app/register.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashScreen',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
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
      title: new Text(
        'Stucare Technologies',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      image: new Image.network('https://images.app.goo.gl/ysAm1xDqa2zM5gu2A'),
      loadingText: Text('Loading'),
      photoSize: 100.0,
      loaderColor: Colors.greenAccent,
    );
  }
}

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stucare Technologies'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: MaterialButton(
                  color: Colors.white,
                  splashColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22.0),
                    side: BorderSide(color: Colors.greenAccent),
                  ),
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login(),
                      ),
                    );
                  },
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.white,
                    splashColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(22.0),
                      side: BorderSide(color: Colors.greenAccent),
                    ),
                    child: Text('Register'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
