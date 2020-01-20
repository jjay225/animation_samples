
import 'package:flutter/material.dart';

class MyAnimateHomePage extends StatefulWidget {
  MyAnimateHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAnimateHomePageState createState() => _MyAnimateHomePageState();
}

class _MyAnimateHomePageState extends State<MyAnimateHomePage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation growAnimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))..addListener((){
          setState(() {            
          });
        });
    growAnimation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
        child: Container(
      height: growAnimation.value,
      width: growAnimation.value,
      color: Colors.red
    ),
  ));
  }
}

