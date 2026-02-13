import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/button_widget.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import '../widget/customAppber.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 90),
                  height: 229,
                  width: 428,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: Colors.green,
                  ),
                  child: CustomAppBerWidget(title: 'Details'),
                ),
                Positioned(
                  bottom: -100,
                  right: 50,

                  child: Image(
                    image: AssetImage("assets/appleB.png"),
                    height: 219,
                    width: 240,
                  ),
                ),
              ],
            ),
            SizedBox(height: 140),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomTextWidget(
                        title: "Green Apple",
                        fs: 28,
                        fw: FontWeight.w700,
                        fc: Colors.grey[700],
                      ),
                      SizedBox(width: 130),
                      Image(image: AssetImage("assets/minus.png")),
                      CustomTextWidget(
                        title: "1",
                        fs: 24,
                        fw: FontWeight.w600,
                        fc: Colors.green,
                      ),
                      Icon(Icons.add_circle, color: Colors.green),
                    ],
                  ),
                  CustomTextWidget(
                    title: "Special price",
                    fs: 22,
                    fw: FontWeight.w400,
                    fc: Colors.green,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        title: "\$2",
                        fs: 34,
                        fw: FontWeight.w900,
                        fc: Colors.grey[800],
                      ),
                      CustomTextWidget(
                        title: "(42% off)",
                        fs: 22,
                        fw: FontWeight.w600,
                        fc: Colors.green,
                      ),
                    ],
                  ),
                  CustomTextWidget(
                    title: "Description",
                    fs: 22,
                    fw: FontWeight.w700,
                    fc: Colors.grey[800],
                  ),
                  CustomTextWidget(
                    title:
                        "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
                    // maxLine: 5,
                    fs: 16,
                    fw: FontWeight.w400,
                    fc: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      ButtonWidget(
                        title: "Subscribe",
                        fs: 16,
                        fw: FontWeight.w600,
                        fc: Colors.white,
                        bHeight: 36,
                        bWidth: 106,
                        radius: 5,
                        cC: Colors.green,
                      ),
                      ButtonWidget(
                        title: "Buy Once",
                        fs: 16,
                        fw: FontWeight.w600,
                        fc: Colors.green,
                        bHeight: 36,
                        bWidth: 106,
                        radius: 5,
                      ),
                    ],
                  ),
                  CustomTextWidget(
                    title: "Related items",
                    fw: FontWeight.w700,
                    fs: 22,
                    fc: Colors.grey[800],
                  ),
                  SizedBox(
                    height: 161,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (index, context) => Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 161,
                            width: 122,
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage("assets/istobery.png"),
                                  width: 84,
                                  height: 85,
                                ),
                                Container(
                                  height: 47,
                                  width: 122,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.redAccent[400],
                                  ),
                                  child: Center(
                                    child: CustomTextWidget(
                                      title: "Strawberry",
                                      fw: FontWeight.w700,
                                      fs: 16,
                                      fc: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //😣😣😣😣😣😣😣😣😣😣😣😣😣 ei page e overflow ache
                          Positioned(
                            bottom: 55,
                            right: 8,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(9.8),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
