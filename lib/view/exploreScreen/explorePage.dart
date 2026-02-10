import 'package:flutter/material.dart';
import 'package:sg_grocery/view/exploreScreen/productCard.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import '../widget/row.dart';

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
        title: CustomTextWidget(title: "Explore", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowWidget(title: 'Groceries',subTitle: 'See all',),
           ProductCardWidget(),
          ],
        ),
      ),
    );
  }
}




