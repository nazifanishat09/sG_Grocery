import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
class Explorepage extends StatefulWidget {
  const Explorepage({super.key});

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/backArrow.png")),
        centerTitle: true,
        title:CustomTextWidget(title: "Explore",fs: 22,fw: FontWeight.w700,),
      ),
    );
  }
}
