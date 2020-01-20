import 'package:flutter/material.dart';

class MyAnimateTextHomePage extends StatefulWidget {
  MyAnimateTextHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAnimateTextHomePageState createState() => _MyAnimateTextHomePageState();
}

class _MyAnimateTextHomePageState extends State<MyAnimateTextHomePage> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            AnimatedDefaultTextStyle(
              style: _isSelected
                  ? TextStyle(
                      fontSize: 45,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)
                  : TextStyle(
                      fontSize: 25.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w400),
              duration: const Duration(milliseconds: 300),
              child: Text("Animated text..."),
            ),
            FlatButton(
              child: Text("Start stop"),
              onPressed: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
            )
          ])),
    );
  }
}
