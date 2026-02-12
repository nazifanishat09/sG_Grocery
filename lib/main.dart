import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/view/HomeUi/homePage.dart';
import 'package:sg_grocery/view/exploreScreen/explorePage.dart';
import 'package:sg_grocery/view/fruitsScreen/fruitsScreen.dart';
import 'package:sg_grocery/view/registerUI/registerPage.dart';
import 'package:sg_grocery/view/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home:FruitsScreen());
  }
}
