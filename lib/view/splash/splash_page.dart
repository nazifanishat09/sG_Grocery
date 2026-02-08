import 'package:flutter/material.dart';
import 'package:sg_grocery/view/login/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

NextPage ()async{await Future.delayed(Duration(seconds:10));
  setState(() {});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogInPage()));

}
@override
  void initState() {
    NextPage();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/logo/splash.png")),
    );
  }
}


























