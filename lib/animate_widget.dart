
import 'package:flutter/material.dart';

class MyAnimateHomePageWidget extends StatefulWidget {
  MyAnimateHomePageWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAnimateHomePageWidgetState createState() => _MyAnimateHomePageWidgetState();
}

class _MyAnimateHomePageWidgetState extends State<MyAnimateHomePageWidget> with TickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
        child: GrowingContainer(controller: controller),
  ));
  }
}

class GrowingContainer extends AnimatedWidget {
  GrowingContainer({AnimationController controller})
      : super(
            listenable: Tween<double>(begin: 0, end: 200).animate(controller));

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return Container(
      height: animation.value,
      width: animation.value,
      color: Colors.red
    );
  }
}
