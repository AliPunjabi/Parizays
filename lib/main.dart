// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parizays/prizayshome.dart';
import 'package:parizays/transitions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () async => Navigator.pushReplacement(
            context,
            Transitions(
                transitionType: TransitionType.fade,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 1000),
                reverseCurve: Curves.easeInOut,
                widget: MyHomePage1())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage('assets/images/Splash-screen.png'),
    )));
  }
}
