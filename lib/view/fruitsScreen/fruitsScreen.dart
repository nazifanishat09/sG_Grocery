import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

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
          Row(
            spacing: 20,
            children: [
              Image(image: AssetImage("assets/backArrowWhite.png")),

              CustomTextWidget(
                title: "Fruits",
                fs: 22,
                fw: FontWeight.w700,
                fc: Colors.white,
              ),
            ],
          ),
          Container(
            width: 428,
            height: 1129,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (i, c) => Container(
                margin: EdgeInsets.all(10),
                height: 236,
                width: 190,
                decoration: BoxDecoration(
                  color: Color(0xffF2FCF4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Icon(Icons.favorite_border, color: Colors.red),
                    ),
                    Image(
                      image: AssetImage("assets/istobery.png"),
                      height: 79,
                      width: 107,
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        CustomTextWidget(
                          title: "Strawberry",
                          fs: 18,
                          fw: FontWeight.w700,
                          fc: Colors.grey[700],
                        ),
                        CustomTextWidget(
                          title: "(1kg)",
                          fs: 14,
                          fw: FontWeight.w600,
                          fc: Colors.grey[600],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                          title: "\$2",
                          fs: 18,
                          fw: FontWeight.w600,
                          fc: Colors.green,
                        ),
                        SizedBox(width: 50),

                        Image(image: AssetImage("assets/minus.png")),
                        CustomTextWidget(
                          title: "2",
                          fs: 18,
                          fw: FontWeight.w600,
                          fc: Colors.green,
                        ),
                        Icon(Icons.add_circle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
