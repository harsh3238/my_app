import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22.0))),
                      labelText: 'Registered Number',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: TextField(
                  maxLength: 15,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22.0))),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: Colors.white,
                splashColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(22.0),
                  side: BorderSide(color: Colors.greenAccent),
                ),
                child: Text('Submit'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
