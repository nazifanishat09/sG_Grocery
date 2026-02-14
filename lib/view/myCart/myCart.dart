import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import 'card.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  List nameL = [
    "Today, 6 PM - 10 PM",
    "Tomorrow, 7 AM - 9 PM",
    "Pick a specific date",
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/backArrow.png")),
        centerTitle: true,
        title: CustomTextWidget(title: "My Cart", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              icon: Image(image: AssetImage("assets/dropdown.png")),
              underline: SizedBox(),
              hint: CustomTextWidget(title: 'Tomorrow, 7 AM - 9 PM', fs: 10),
              value: value == "" ? null : value,

              items: nameL
                  .map(
                    (v) => DropdownMenuItem<String>(value: v, child: Text(v)),
                  )
                  .toList(),

              onChanged: (c) {
                value = c;
                setState(() {});
              },
            ),
            // SizedBox(
            //   height: 350,
            //   child: Expanded(
            //     child: ListView.builder(
            //       itemCount: 3,
            //
            //       itemBuilder: (i, c) => NewCardWidget(),
            //     ),
            //   ),
            // ),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  spacing: 1,
                  children: [
                    Container(
                      width: 270,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Color(0xff60C370),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                                SizedBox(height: 55),
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    title: "FLAT",
                                    fs: 14,
                                    fw: FontWeight.w700,
                                    fc: Colors.white,
                                  ),
                                  CustomTextWidget(
                                    title: "50% off",
                                    fs: 20,
                                    fw: FontWeight.w700,
                                    fc: Colors.white,
                                  ),
                                  CustomTextWidget(
                                    title: "on your first order",
                                    fs: 12,
                                    fw: FontWeight.w400,
                                    fc: Colors.white,
                                  ),
                                  CustomTextWidget(
                                    title: "Use coupon code to get OFFER",
                                    fs: 12,
                                    fw: FontWeight.w400,
                                    fc: Colors.white,
                                  ),
                                ],
                              ),
                            ),SizedBox(width:  20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                                SizedBox(height:54),
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 127,
                      decoration: BoxDecoration(
                        color: Color(0xff60C370),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                                SizedBox(height: 38),
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextWidget(
                                  title: "code",
                                  fs: 14,
                                  fw: FontWeight.w400,
                                  fc: Colors.white,
                                ),
                                CustomTextWidget(
                                  title: "GETFIRST",
                                  fs: 16,
                                  fw: FontWeight.w700,
                                  fc: Colors.white,
                                ),
                              ],
                            ),
                           // SizedBox(height: 2),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                                SizedBox(height: 38),
                                Icon(
                                  Icons.close,size: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA4E0A4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 190,
                  top: -18,
                  child: Column(
                    spacing: 100,
                    children: [
                      SizedBox(
                        height: 30,
                        child: CircleAvatar(backgroundColor: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                        child: CircleAvatar(backgroundColor: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),





          ],
        ),
      ),
    );
  }
}
