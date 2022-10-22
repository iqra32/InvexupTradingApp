import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Secondscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
       body: SplashScreen(),
      
    );
  }
}
