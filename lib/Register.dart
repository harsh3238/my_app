import 'package:flutter/material.dart';
import 'package:my_app/Login.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
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
              padding: const EdgeInsets.all(10.0),
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
                      labelText: 'Enter Number',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  maxLength: 15,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22.0))),
                      labelText: 'Enter Name',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  maxLength: 20,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22.0))),
                      labelText: 'Enter Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                      labelText: 'Confirm Password',
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
