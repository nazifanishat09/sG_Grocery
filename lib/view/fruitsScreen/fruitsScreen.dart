import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/button_widget.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import 'card.dart';

class FruitsScreen extends StatefulWidget {
  const FruitsScreen({super.key});

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff55AB60),

      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              spacing: 20,
              children: [
                Image(image: AssetImage("assets/backArrowWhite.png")),

                CustomTextWidget(
                  title: "Fruits",
                  fs: 25,
                  fw: FontWeight.w900,
                  fc: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(padding: EdgeInsets.only(top: 15,right: 10,left: 10),
              width: 428,
              height: MediaQuery.sizeOf(context).height,//1129,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: CardWidgetGride(),
            ),
          ),
        ],
      ),
    );
  }
}


