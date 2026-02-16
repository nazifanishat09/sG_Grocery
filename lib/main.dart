import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/view/HomeUi/homePage.dart';
import 'package:sg_grocery/view/detailsPage/detailsPage.dart';
import 'package:sg_grocery/view/exploreScreen/explorePage.dart';
import 'package:sg_grocery/view/fruitsScreen/fruitsScreen.dart';
import 'package:sg_grocery/view/myCart/myCart.dart';
import 'package:sg_grocery/view/mySubscription/mySubscription.dart';
import 'package:sg_grocery/view/paymentScreen/paymentScreen.dart';
import 'package:sg_grocery/view/registerUI/registerPage.dart';
import 'package:sg_grocery/view/splash/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return MyApp();
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartScreen());
  }
}
