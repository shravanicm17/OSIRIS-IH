import 'package:flutter/material.dart';
import 'package:ihosiris/connect1.dart';
import 'package:ihosiris/profile.dart';
import 'login.dart';
import 'profile.dart';
import 'connect3.dart';
import 'connect2.dart';
import 'connect1.dart';
import 'analysis.dart';
import 'support.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}


