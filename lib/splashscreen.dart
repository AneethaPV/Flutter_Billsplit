import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:billsplit/Home.dart';
import 'package:flutter/material.dart';
import 'package:billsplit/splashscreen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'asset/a1.png',
      nextScreen: bill(),
      splashTransition: SplashTransition.rotationTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}
