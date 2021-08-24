import 'dart:async';
import 'package:flutter/material.dart';

import '/screens/home/home.dart';

import 'package:rive/rive.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Flutter Demo Home Page')));
  }

  initScreen(BuildContext context) {
    return const Scaffold(
      body: RiveAnimation.asset(
        "assets/rive/splash.riv",
        alignment: Alignment.center,
        fit: BoxFit.fill,
      ),
    );
  }
}
