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
        title: CustomTextWidget(title: "Explore", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  title: "Groceries",
                  fs: 20,
                  fw: FontWeight.w700,
                ),
                CustomTextWidget(
                  title: "See all",
                  fs: 16,
                  fw: FontWeight.w600,
                  fc: Colors.green,
                ),
              ],
            ),
            Container(
              height: 150,
              width: 114,
              decoration: BoxDecoration(
                color:  Color(0xffF2FCF4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [SizedBox(height: 10,),
                    Center(child: Image(image: AssetImage("assets/image1.png"))),
                    SizedBox(height: 8,),
                    CustomTextWidget(
                      title: "Jaggery Powder",
                      fs: 12,
                      fw: FontWeight.w500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(
                          title: "500 g",
                          fs: 12,
                          fw: FontWeight.w400,
                          fc: Colors.grey,
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Color(0xff55AB60),
                            borderRadius: BorderRadius.circular(10),
                          ),child: Icon(Icons.add,color: Colors.white,),

                        ),
                      ],
                    ),
                    CustomTextWidget(
                      title: "\$3",
                      fs: 12,
                      fw: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
