import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';


class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: Image(image: AssetImage("assets/backArrow.png")),centerTitle: true,
      title: CustomTextWidget(title: "My Cart",fs: 22,fw: FontWeight.w700,) ,
    ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [

        ],),
      ),


    );
  }
}
