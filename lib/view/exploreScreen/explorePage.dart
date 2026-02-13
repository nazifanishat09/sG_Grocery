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
      appBar: AppBar(forceMaterialTransparency: true,
        leading: Image(image: AssetImage("assets/backArrow.png")),
        centerTitle: true,
        title: CustomTextWidget(title: "Explore", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowWidget(title: 'Groceries', subTitle: 'See all'),
              ProductCardWidget(
                title: 'Jaggery Powder',
                subTitle: '500 g',
                subTitle2: '\$3',
                img: 'assets/image1.png',
              ),
              RowWidget(title: 'Vegetables', subTitle: 'See all'),
              ProductCardWidget(
                title: 'Tomato',
                subTitle: '1 kg',
                subTitle2: '\$2',
                img: 'assets/tomato.png',
              ),
              RowWidget(title: "Fruits", subTitle: "See all"),
              ProductCardWidget(
                title: "Strawberry",
                subTitle: "1 kg",
                subTitle2: "\$2",
                img: "assets/istobery.png",
              ),
              RowWidget(title: "Dairy Products", subTitle: "See all"),
              ProductCardWidget(
                title: "A2MATE milk",
                subTitle: "0.5 ltr.",
                subTitle2: "\$2",
                img: "assets/milk.png",
              ),
              RowWidget(title: "Bakery Items", subTitle: "See all"),
              ProductCardWidget(title: "Parle Rusk", subTitle: "500 g", subTitle2: "\$2", img: "assets/biscuite.png")
            ],
          ),
        ),
      ),
    );
  }
}
