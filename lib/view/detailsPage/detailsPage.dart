import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 229,
                width: 428,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: Colors.green,
                ),
                child: Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/backArrowWhite.png")),
                    CustomTextWidget(
                      title: "Details",
                      fs: 22,
                      fw: FontWeight.w700,
                      fc: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -100,
                right: 50,

                child: Image(image: AssetImage("assets/appleB.png"),height: 219,width: 240,),
              ),
            ],
          ),
          Row(children: [
CustomTextWidget(title: "Green Apple",fs: 28,fw: FontWeight.w700,),
            Icon(Icons.)
          ],)
        ],
      ),

    );
  }
}
